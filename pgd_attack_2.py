import os
import argparse
import torch
import torch.nn as nn
import torch.nn.functional as F
from tqdm import tqdm
import data_loader.data_loaders as module_data
import model.loss as module_loss
import model.metric as module_metric
import model as module_arch
from metrics.evaluate_tDCF_asvspoof19_func import evaluate_tdcf_eer
from parse_config import ConfigParser
from pathlib import Path
from collections import defaultdict
from functools import reduce
import numpy as np
from numpy import inf
from data_loader.data_loaders import SpoofDataLoaderBalanceSample

torch.manual_seed(1234)  #cpu
torch.cuda.manual_seed(1234) #gpu
np.random.seed(1234) #numpy
# random.seed(1234) #random and transforms
torch.backends.cudnn.benchmark = True



MIN_N_FRAMES = 600
label_dict = {"spoof": 0, "bonafide": 1}


def pgd_linf_rand(model, X, y, epsilon, alpha, num_iters, restarts, loss_fn):
    """ Construct PGD adversarial examples on the samples X."""

    max_loss = torch.zeros(y.shape[0]).to(y.device)
    max_delta = torch.zeros_like(X)

    for i in range(restarts):
        delta = torch.rand_like(X, requires_grad=True)
        delta.data = delta.data * 2 * epsilon - epsilon    # [-e, e]

        for t in range(num_iters):
            # print("-"*100)
            loss = loss_fn(model(X + delta, eval=True), y).mean()
            loss.backward()
            delta.data = (delta + alpha*delta.grad.detach().sign()).clamp(-epsilon,epsilon)
            delta.grad.zero_()
            model.zero_grad()

        all_loss = loss_fn(model(X+delta, eval=True), y)
        max_delta[all_loss.data >= max_loss] = delta.data[all_loss.data >= max_loss]
        max_loss = torch.max(max_loss, all_loss.data)
    return max_delta


def main(config, resume, sysid, protocol_file, asv_score_file, epsilon):
    logger = config.get_logger('PGD-attack')

    data_loader = getattr(module_data, config['dev_data_loader']['type'])(
        scp_file=None,
        data_dir=config['dev_data_loader']['args']['data_dir'],
        batch_size=8,
        shuffle=False,
        validation_split=0.0,
        num_workers=1,
        eval=True,
        read_protocol=True, 
        protocol_file=protocol_file  # ASVspoof2019.LA.cm.eval.trl.txt
    )


    # data_dir = config['dev_data_loader']['args']['data_dir']
    output_dir = os.path.join(os.path.dirname(resume), f'pgd_adv_egs_{sysid}_{epsilon}')
    os.makedirs(output_dir, exist_ok=True)

    if 'lcnn' in resume:
        loss_fn = config.initialize('loss', module_loss)
    else:
        loss_fn = nn.CrossEntropyLoss(reduction='none')

    # loss_fn = nn.CrossEntropyLoss(reduction='none')
    # loss_fn = nn.NLLLoss(reduction='none')

    if hasattr(loss_fn, 'it'):
        loss_fn.it = inf

    # build model architecture
    model = config.initialize('arch', module_arch)
    # logger.info(model)


    logger.info('Loading checkpoint: {} ...'.format(resume))
    checkpoint = torch.load(resume)
    state_dict = checkpoint['state_dict']
    if config['n_gpu'] > 1:
        model = torch.nn.DataParallel(model)
    model.load_state_dict(state_dict)

    # prepare model for testing
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = model.to(device)
    model.train()

    # with open(protocol_file, 'r') as f:
    #     protocol_file_lines = [line.strip().split(' ') for line in f]
    # if sysid is not None:
    #     protocol_file_lines = [i for i in protocol_file_lines if sysid in i or 'bonafide' in i]
    epsilon = float(epsilon)
    num_iters = 10
    restarts = 5
    alpha = epsilon / num_iters

    for i, (utt_list, data, target) in enumerate(tqdm(data_loader)):
        data, target = data.to(device), target.to(device)
        delta = pgd_linf_rand(model, data, target, epsilon, alpha, num_iters, restarts, loss_fn)
        data_perturbed = data + delta
        data_perturbed = data_perturbed.detach().squeeze_().cpu().numpy()
        for index, utt_id in enumerate(utt_list):
            cur_data = data_perturbed[index]
            np.save(os.path.join(output_dir, f"{utt_id}.npy"), cur_data, allow_pickle=False)



if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='ASVSpoof2019 project')

    parser.add_argument('-r', '--resume', default=None, type=str,
                        help='path to latest checkpoint (default: None)')
    parser.add_argument('-s', '--sysid', default=None, type=str,
                        help='system id (default: None)')
    parser.add_argument('-e', '--epsilon', default=None, type=str,
                        help='epsilon')
    parser.add_argument('-f', '--protocol_file', default=None, type=str,
                        help='Protocol file: e.g., data/ASVspoof2019.PA.cm.dev.trl.txt')
    parser.add_argument('-a', '--asv_score_file', default=None, type=str,
                        help='Protocol file: e.g., data/ASVspoof2019_PA_dev_asv_scores_v1.txt')    
    parser.add_argument('-d', '--device', default=None, type=str,
                        help='indices of GPUs to enable (default: all)')
    
    # epsilon_list = [100.0, 50.0, 25.0, 10.0, 5.0, 1.0, 0.1]
    # epsilon_list = [5.0, ]
    # n_es = len(epsilon_list)

    args = parser.parse_args()
    config = ConfigParser(args)
    # for i, epsilon in enumerate(epsilon_list):
    #     print(f"---> [{i+1}/{n_es}], epsilon: {epsilon}:\n")
    #     main(config, args.resume, args.sysid, args.protocol_file, args.asv_score_file, epsilon)
    main(config, args.resume, args.sysid, args.protocol_file, args.asv_score_file, args.epsilon)
