import os
import argparse
import torch
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

torch.manual_seed(1234)  #cpu
torch.cuda.manual_seed(1234) #gpu
np.random.seed(1234) #numpy
# random.seed(1234) #random and transforms
torch.backends.cudnn.benchmark = True



MIN_N_FRAMES = 600
N_UTTS = 1
label_dict = {"spoof": 0, "bonafide": 1}


def get_unified_feature(mat):
    """If number of frames of mat is less than MIN_N_FRAMES, pad to MIN_N_FRAMES by repeating.
       Otherwise, pad mat to have mutliple MIN_N_FRAMES frames by repeating.
    """
    n_frames = mat.shape[0]
    
    if n_frames < MIN_N_FRAMES:
        n_repeat = int(np.ceil(MIN_N_FRAMES / n_frames))
        mat = np.tile(mat, (n_repeat, 1))
        return mat[:MIN_N_FRAMES, :]
    else:
        n_repeat = int(np.ceil(n_frames / MIN_N_FRAMES))
        mat = np.tile(mat, (n_repeat, 1))
        return mat[:MIN_N_FRAMES*n_repeat, :]
    

# FGSM attack code
def fgsm_attack(image, epsilon, data_grad):
    # Collect the element-wise sign of the data gradient
    sign_data_grad = data_grad.sign()
    # Create the perturbed image by adjusting each pixel of the input image
    perturbed_image = image + epsilon * sign_data_grad
    ## optional ##
    # Adding clipping to maintain [0, 1] range
    # perturbed_image = torch.clamp(perturbed_image, 0, 1)
    ##############
    # Return the perturbed image
    return perturbed_image


def main(config, resume, sysid, protocol_file, asv_score_file, epsilon):
    logger = config.get_logger('attack')

    data_dir = config['dev_data_loader']['args']['data_dir']
    output_dir = os.path.join(os.path.dirname(resume), f'fgsm_adv_egs_{sysid}_{epsilon}')
    os.makedirs(output_dir, exist_ok=True)

    loss_fn = config.initialize('loss', module_loss)
    if hasattr(loss_fn, 'it'):
        loss_fn.it = inf

    # build model architecture
    model = config.initialize('arch', module_arch)
    # logger.info(model)


    # logger.info('Loading checkpoint: {} ...'.format(resume))
    checkpoint = torch.load(resume)
    state_dict = checkpoint['state_dict']
    if config['n_gpu'] > 1:
        model = torch.nn.DataParallel(model)
    model.load_state_dict(state_dict)

    # prepare model for testing
    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    model = model.to(device)
    model.train()


    # total_loss = 0.0
    # total_metrics = torch.zeros(len(metric_fns))

    with open(protocol_file, 'r') as f:
        protocol_file_lines = [line.strip().split(' ') for line in f]
    if sysid is not None:
        protocol_file_lines = [i for i in protocol_file_lines if sysid in i or 'bonafide' in i]

    correct = 0
    ff = open('utts_unchanged.txt', 'w')

    # with torch.no_grad():
    for line in tqdm(protocol_file_lines):
        utt_id = line[1]
        label = line[-1]
        label_int = label_dict[label]
        
        feat_org = np.load(os.path.join(data_dir, f"{utt_id}.npy"))
        n_frames = feat_org.shape[0]
        
        # if label != "bonafide":  # TODO
        #     # np.save(os.path.join(output_dir, f"{utt_id}.npy"), feat_org, allow_pickle=False)
        #     continue

        if n_frames <= MIN_N_FRAMES:
            target = np.array([label_int]*2)
            target = torch.from_numpy(target).to(device)
            feat = get_unified_feature(feat_org)
            feat = np.expand_dims(feat, axis=0)  # -> [1, MIN_N_FRAMES, D]
            feat = np.tile(feat, (2, 1, 1))
            # ts_np = np.zeros((1, MIN_N_FRAMES, feat.shape[-1]))
            data = torch.from_numpy(feat).float().to(device).unsqueeze_(1)
            # Set requires_grad attribute of tensor. Important for Attack
            # print(data.size())
            # print("-"*100)
            data.requires_grad = True
            output = model(data)
            init_pred = output[0].max(1, keepdim=True)[1] # get the index of the max probability

            # If the initial prediction is wrong, dont bother attacking, just move on
            # if init_pred[0].item() != target[0].item():
            #     np.save(os.path.join(output_dir, f"{utt_id}.npy"), feat_org, allow_pickle=False)
            #     ff.write(f"{utt_id} \n")
            #     continue

            # Calculate the loss
            loss = loss_fn(output, target)  # TODO

            # Zero all existing gradients
            model.zero_grad()

            # Calculate gradients of model in backward pass
            loss.backward()

            # Collect datagrad
            data_grad = data.grad.data

            # Call FGSM Attack
            perturbed_data = fgsm_attack(data, epsilon, data_grad)

            # perturbed_data = perturbed_data[0].squeeze().detach().cpu().numpy()[:n_frames, :]
            perturbed_data = perturbed_data[0].squeeze().detach().cpu().numpy()
            np.save(os.path.join(output_dir, f"{utt_id}.npy"), perturbed_data, allow_pickle=False)

        else:
            feat = get_unified_feature(feat_org)
            n_repeat = feat.shape[0] // MIN_N_FRAMES
            target = np.array([label_int]*n_repeat)
            target = torch.from_numpy(target).to(device)
            ts_np = np.zeros((n_repeat, MIN_N_FRAMES, feat.shape[-1]))
            for i in range(n_repeat):
                ts_np[i] = feat[i*MIN_N_FRAMES:(i+1)*MIN_N_FRAMES, :]

            ts_np = np.expand_dims(ts_np, axis=1)  # -> [n_repeat, 1, MIN_N_FRAMES, D]
            data = torch.from_numpy(ts_np).float().to(device)
            data.requires_grad = True
            output = model(data)
            # init_pred = output[0].max(1, keepdim=True)[1] # get the index of the max probability

            # Calculate the loss
            loss = loss_fn(output, target)  # TODO

            # Zero all existing gradients
            model.zero_grad()

            # Calculate gradients of model in backward pass
            loss.backward()

            # Collect datagrad
            data_grad = data.grad.data

            # Call FGSM Attack
            perturbed_data = fgsm_attack(data, epsilon, data_grad)

            perturbed_data = perturbed_data.squeeze().detach().cpu().numpy()

            perturbed_data_np = np.zeros((feat.shape[0], feat.shape[-1]))
            for i in range(n_repeat):
                perturbed_data_np[i*MIN_N_FRAMES:(i+1)*MIN_N_FRAMES] = perturbed_data[i]
            perturbed_data_np = perturbed_data_np[:n_frames, :]

            np.save(os.path.join(output_dir, f"{utt_id}.npy"), perturbed_data_np, allow_pickle=False)

    ff.close()
    # n_samples = len(protocol_file_lines)
    # # log = {'loss': total_loss / n_samples}
    # log = { }
    # log.update({
    #     "accuracy": correct / n_samples
    # })
    # logger.info(log)

    # # compute t-DCF and eer
    # # with open(protocol_file, 'r') as f:
    # #     protocol_file_lines = [line.strip().split(' ') for line in f]

    
    # cm_score_file = Path(resume).parent / 'cm_score_eval.txt'
    # with open(cm_score_file, 'w') as f:
    #     for line in protocol_file_lines:
    #         utt_id = line[1]
    #         label = line[-1]
    #         sco = utt2scores[utt_id]
    #         f.write(utt_id+" "+"-"+" "+label+" "+str(sco)+"\n")
    #         # score_list = utt2scores[utt_id]  
    #         # avg_score  = reduce(lambda x, y: x + y, score_list) / len(score_list)
    #         # f.write(utt_id+" "+"-"+" "+label+" "+str(avg_score)+"\n")           
    # tdcf, eer = evaluate_tdcf_eer(cm_score_file, asv_score_file, print_cost=True) 
    # logger.info({"min-tDCF": tdcf, "EER": eer})


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='ASVSpoof2019 project')

    parser.add_argument('-r', '--resume', default=None, type=str,
                        help='path to latest checkpoint (default: None)')
    parser.add_argument('-s', '--sysid', default=None, type=str,
                        help='system id (default: None)')
    parser.add_argument('-f', '--protocol_file', default=None, type=str,
                        help='Protocol file: e.g., data/ASVspoof2019.PA.cm.dev.trl.txt')
    parser.add_argument('-a', '--asv_score_file', default=None, type=str,
                        help='Protocol file: e.g., data/ASVspoof2019_PA_dev_asv_scores_v1.txt')    
    parser.add_argument('-d', '--device', default=None, type=str,
                        help='indices of GPUs to enable (default: all)')
    
    # epsilon_list = [500.0, 200.0, 90.0, 80.0, 70.0, 50.0, 20.0, 10.0, 0.1]
    epsilon_list = [100.0, 50.0, 25.0, 10.0, 5.0, 1.0, 0.1]
    n_es = len(epsilon_list)

    args = parser.parse_args()
    config = ConfigParser(args)
    for i, epsilon in enumerate(epsilon_list):
        print(f"---> [{i+1}/{n_es}], epsilon: {epsilon}:\n")
        main(config, args.resume, args.sysid, args.protocol_file, args.asv_score_file, epsilon)
