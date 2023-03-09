import torch
import torch.nn as nn
from model.senet import se_resnet34, se_resnet12
from model.lcnn import lcnn_net
from torchsummary import summary


m = se_resnet34()
# m = lcnn_net()

teacher_state = torch.load("/data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/model_best.pth")
# teacher_state = torch.load("/data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth")

m.load_state_dict(teacher_state['state_dict'],strict=False)
m = nn.DataParallel(m).to("cuda:0")
m.eval()

input_size = list(m.parameters())[0].shape[1:]
print("Input size of the model:", input_size)
summary(m, input_size=input_size)