import sys, os
import argparse
import numpy as np 
import subprocess
from tqdm import tqdm
from preprocess.generic import load_wav_snf, stft, save_wav, revert_power_db_to_wav

NUM_UTTS = 4913
NUM_FRAMES = 600




def main(args):
    eval_protocol_data = np.genfromtxt(args.eval_protocol, dtype=str)
    sys_keys = eval_protocol_data[:, 3]

    sys_list = list(set(sys_keys))
    print("System list: ", sys_list)

    output_dir = os.path.join(os.path.dirname(args.adv_spec_dir), os.path.basename(args.adv_spec_dir) + "_wav")
    os.makedirs(output_dir, exist_ok=True)

    for sysid in sys_list:
        
        cnt = 0
        if sysid == '-': continue

        print("Processing system: ", sysid)
        
        cur_out_dir = os.path.join(output_dir, sysid)
        os.makedirs(cur_out_dir, exist_ok=True)

        for line in eval_protocol_data:
            if not line[3] == sysid: continue
            utt_id = line[1]
            flac_file = os.path.join(args.flac_dir, utt_id + ".flac")
            try:
                adv_spec = np.load(os.path.join(args.adv_spec_dir, utt_id + ".npy"))
            except:
                continue
                
            wav = load_wav_snf(flac_file)
            spec = stft(wav, n_fft=1724, hop_length=130, win_length=1724, window="blackman")
            if spec.shape[0] < NUM_FRAMES:
                continue
            adv_wav = revert_power_db_to_wav(spec, adv_spec)
            save_wav(adv_wav, os.path.join(cur_out_dir, utt_id + "_adv.wav"))
            save_wav(wav, os.path.join(cur_out_dir, utt_id + ".wav"))
            print("count: {}".format(cnt))
            cnt += 1
            if cnt > NUM_UTTS:
                break


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='ASVSpoof2019 project')
    parser.add_argument('--eval_protocol', 
        default="../asvspoof2019_data/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt", type=str, 
        help='evaluation protocol file')
    parser.add_argument('--flac_dir', default="../asvspoof2019_data/LA/ASVspoof2019_LA_eval/flac", type=str, help="Flac data directory.")
    parser.add_argument('--adv_spec_dir', default=None, type=str, help="Directory to the adverarially perturbed spectrograms")
    # parser.add_argument('--mdl_save_dir', default=None, type=str,
    #                     help='Path to the model save directory(default: None)')
    # parser.add_argument('-d', '--device', default=None, type=str,
    #                     help='indices of GPUs to enable (default: all)')
    args = parser.parse_args()
    main(args)
