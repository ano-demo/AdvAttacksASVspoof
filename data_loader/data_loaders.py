import os
import numpy as np
import torch
from torch.utils import data
# from torchvision import datasets, transforms
from .base_data_loader import BaseDataLoader
import sys

MIN_N_FRAMES = 600

def get_unified_feature(mat, eval=False):
    """ If number of frames > 600, only use the first 600 frames, 
    otherwise, pad by repeating and then use the first 600 frames.
    Args:
        mat: has shape [T, D].
    """
    n_frames = mat.shape[0]

    if n_frames > MIN_N_FRAMES:

        if not eval:
            ii = np.random.randint(0, n_frames - MIN_N_FRAMES)
            return mat[ii : (ii+MIN_N_FRAMES), :]
        else:
            return mat[: MIN_N_FRAMES, :]

    n_repeat = int(np.ceil(MIN_N_FRAMES / n_frames))
    mat = np.tile(mat, (n_repeat, 1))
    return mat[:MIN_N_FRAMES, :]

class SpoofDataSet(data.Dataset):
    def __init__(self, scp_file, data_dir):
        with open(scp_file, 'r') as f:
            # self._metadata = [line.strip().split(' ') for line in f if line.find(match_str)>=0]
            self._metadata = [line.strip().split(' ') for line in f]
        self.n_samples = len(self._metadata)
        self.data_dir = data_dir
        self.label_map ={"bonafide": 1,
                         "spoof": 0}

    def __len__(self):
        return self.n_samples

    def __getitem__(self, idx):
        line = self._metadata[idx]
        utt_id = line[0]
        X = np.expand_dims(np.load(os.path.join(self.data_dir, f"{utt_id}.npy")), axis=0)   # [1, N, D]
        y = self.label_map[line[1]]   # target
        return utt_id, X, y


class SpoofDataLoader(BaseDataLoader):
    def __init__(self, scp_file, data_dir, batch_size, shuffle=True, validation_split=0.0, num_workers=1):
        self.dataset = SpoofDataSet(scp_file, data_dir)
        self.data_dir = data_dir
        super(SpoofDataLoader, self).__init__(self.dataset, batch_size, shuffle, validation_split, num_workers)



class SpoofDataSetBalance(data.Dataset):
    def __init__(self, scp_file, data_dir):
        with open(scp_file, 'r') as f:
            # self._metadata = [line.strip().split(' ') for line in f if line.find(match_str)>=0]
            self._metadata = [line.strip().split(' ') for line in f]
        self._metadata_bonafide = [i for i in self._metadata if 'bonafide' in i]
        self._metadata_spoof = [i for i in self._metadata if 'spoof' in i]
        self.n_samples = len(self._metadata)
        self.data_dir = data_dir
        self.label_map ={"bonafide": 1,
                         "spoof": 0}

    def __len__(self):
        return self.n_samples

    def __getitem__(self, idx):
        # line = self._metadata[idx]
        iidx = np.random.choice([0, 1])
        # print(iidx)
        # print('-'*100)
        if iidx == 0:
            idx2 = np.random.randint(0, len(self._metadata_spoof))
            line = self._metadata_spoof[idx2]
        else:
            idx2 = np.random.randint(0, len(self._metadata_bonafide))
            line = self._metadata_bonafide[idx2]
        # print(line)
        
        # utt_id = line[0]
        # feat = np.load(np.load(os.path.join(self.data_dir, f"{utt_id}.npy")))
        # feat = get_unified_feature(feat)
        X = np.expand_dims(np.load(os.path.join(self.data_dir, f"{utt_id}.npy")), axis=0)   # [1, N, D]
        y = self.label_map[line[1]]   # target
        return utt_id, X, y

class SpoofDataSetBalanceSample(data.Dataset):
    def __init__(self, scp_file, data_dir, eval, read_protocol, protocol_file):
        self.eval = eval  # set this True during evaluation.
        self.read_protocol = read_protocol  # set this True if read wav from cm_protocol file directly 
        if not read_protocol:
            with open(scp_file, 'r') as f:
                # self._metadata = [line.strip().split(' ') for line in f if line.find(match_str)>=0]
                self._metadata = [line.strip().split(' ') for line in f]
        else:
            with open(protocol_file, 'r') as f:
                # self._metadata = [line.strip().split(' ') for line in f if line.find(match_str)>=0]
                self._metadata = [line.strip().split(' ') for line in f]

        self._metadata_bonafide = [i for i in self._metadata if 'bonafide' in i]
        self._metadata_spoof = [i for i in self._metadata if 'spoof' in i]
        self.n_samples = len(self._metadata)
        self.data_dir = data_dir
        self.label_map ={"bonafide": 1,
                         "spoof": 0}

    def __len__(self):
        return self.n_samples

    def __getitem__(self, idx):
        # line = self._metadata[idx]
        if not self.eval:
            iidx = np.random.choice([0, 1])
            # print(iidx)
            # print('-'*100)
            if iidx == 0:
                idx2 = np.random.randint(0, len(self._metadata_spoof))
                line = self._metadata_spoof[idx2]
            else:
                idx2 = np.random.randint(0, len(self._metadata_bonafide))
                line = self._metadata_bonafide[idx2]
            # print(line)
        else:
            line = self._metadata[idx]

        if not self.read_protocol:
            utt_id = line[0]
            y = self.label_map[line[1]]   # target
        else:
            utt_id = line[1]
            y = self.label_map[line[-1]]
        feat = np.load(os.path.join(self.data_dir, f"{utt_id}.npy")).astype(np.float32)
        feat = np.squeeze(feat)
        feat = get_unified_feature(feat, eval=self.eval)
        X = np.expand_dims(feat, axis=0)   # [1, N, D]
        
        return utt_id, X, y


class SpoofDataLoaderBalance(BaseDataLoader):
    def __init__(self, scp_file, data_dir, batch_size, shuffle=True, validation_split=0.0, num_workers=1):
        self.dataset = SpoofDataSetBalance(scp_file, data_dir)
        self.data_dir = data_dir
        super(SpoofDataLoaderBalance, self).__init__(self.dataset, batch_size, shuffle, validation_split, num_workers)


class SpoofDataLoaderBalanceSample(BaseDataLoader):
    def __init__(self, scp_file, data_dir, batch_size, shuffle=True, validation_split=0.0, num_workers=1, eval=False, read_protocol=False, protocol_file=None):
        self.dataset = SpoofDataSetBalanceSample(scp_file, data_dir, eval=eval, read_protocol=read_protocol, protocol_file=protocol_file)
        self.data_dir = data_dir
        super(SpoofDataLoaderBalanceSample, self).__init__(self.dataset, batch_size, shuffle, validation_split, num_workers)


