import argparse
import torch
import torch.nn.functional as F
from tqdm import tqdm
import data_loader.data_loaders as module_data
import model.loss as module_loss
import model.metric as module_metric
import model as module_arch
from metrics.evaluate_tDCF_asvspoof19_func import evaluate_tdcf_eer, evaluate_eer
from parse_config import ConfigParser
from pathlib import Path
from collections import defaultdict
from functools import reduce
import numpy as np

torch.manual_seed(1234)  #cpu
torch.cuda.manual_seed(1234) #gpu
np.random.seed(1234) #numpy
# random.seed(1234) #random and transforms

torch.backends.cudnn.benchmark = True

def main(config, resume, protocol_file, asv_score_file):
    logger = config.get_logger('develop')

    # setup data_loader instances
    data_loader = getattr(module_data, config['dev_data_loader']['type'])(
        None,
        config['dev_data_loader']['args']['data_dir'],
        batch_size=128,
        shuffle=False,
        validation_split=0.0,
        num_workers=2,
        eval=True,
        read_protocol=True, 
        protocol_file=protocol_file
    )

    # build model architecture
    model = config.initialize('arch', module_arch)
    logger.info(model)

    # get function handles of loss and metrics
    # loss_fn = getattr(module_loss, config['loss'])
    loss_fn = config.initialize('loss', module_loss)
    metric_fns = [getattr(module_metric, met) for met in config['metrics']]

    logger.info('Loading checkpoint: {} ...'.format(resume))
    checkpoint = torch.load(resume)
    state_dict = checkpoint['state_dict']
    if config['n_gpu'] > 1:
        model = torch.nn.DataParallel(model)
    model.load_state_dict(state_dict)

    # prepare model for testing
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = model.to(device)
    model.eval()

    # utt2scores = defaultdict(list)
    utt2scores = defaultdict()

    # total_loss = 0.0
    total_metrics = torch.zeros(len(metric_fns))

    with torch.no_grad():
        for i, (utt_list, data, target) in enumerate(tqdm(data_loader)):
            data, target = data.to(device), target.to(device)
            output = model(data, eval=True)
            # loss = loss_fn(output, target)
            batch_size = data.shape[0]
            # total_loss += loss.item() * batch_size
            for i, metric in enumerate(metric_fns):
                total_metrics[i] += metric(output, target) * batch_size
            score = output[:, 1] # use the bonafide class for scoring
            # score = F.softmax(output, dim=1)[:, 1]
            # ======= #
            # loglikeli = F.log_softmax(output, dim=1)
            # score = loglikeli[:, 1] - loglikeli[:, 0]
            # ======= #
            
            for index, utt_id in enumerate(utt_list):
                utt2scores[utt_id] = score[index].item()

    n_samples = len(data_loader.sampler)
    # log = {'loss': total_loss / n_samples}
    log = { }
    log.update({
        met.__name__: total_metrics[i].item() / n_samples for i, met in enumerate(metric_fns)
    })
    logger.info(log)

    # compute t-DCF and eer
    with open(protocol_file, 'r') as f:
        protocol_file_lines = [line.strip().split(' ') for line in f]

    cm_score_file = Path(resume).parent / 'cm_score_dev.txt'
    with open(cm_score_file, 'w') as f:
        for line in protocol_file_lines:
            utt_id = line[1]
            label = line[-1]
            sco = utt2scores[utt_id]
            f.write(utt_id+" "+"-"+" "+label+" "+str(sco)+"\n")
            # score_list = utt2scores[utt_id]  
            # avg_score  = reduce(lambda x, y: x + y, score_list) / len(score_list)
            # f.write(utt_id+" "+"-"+" "+label+" "+str(avg_score)+"\n")           
    tdcf, eer = evaluate_tdcf_eer(cm_score_file, asv_score_file, print_cost=True) 
    _, eer_point = evaluate_eer(cm_score_file)
    logger.info({"min-tDCF": tdcf, "EER": eer, "EER_point": eer_point})
    


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='ASVSpoof2019 project')

    parser.add_argument('-r', '--resume', default=None, type=str,
                        help='path to latest checkpoint (default: None)')
    parser.add_argument('-f', '--protocol_file', default=None, type=str,
                        help='Protocol file: e.g., data/ASVspoof2019.PA.cm.dev.trl.txt')
    parser.add_argument('-a', '--asv_score_file', default=None, type=str,
                        help='Protocol file: e.g., data/ASVspoof2019_PA_dev_asv_scores_v1.txt')    
    parser.add_argument('-d', '--device', default=None, type=str,
                        help='indices of GPUs to enable (default: all)')
    

    args = parser.parse_args()
    config = ConfigParser(args)
    main(config, args.resume, args.protocol_file, args.asv_score_file)
