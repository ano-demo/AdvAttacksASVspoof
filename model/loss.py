import torch.nn.functional as F
import torch.nn as nn
from torch.autograd import Variable
import torch

# def nll_loss(output, target):
#     return F.nll_loss(output, target)

### Define distillation loss function

class KDloss(nn.Module):
    def __init__(self):
        super(KDloss, self).__init__()
        self.loss = nn.KLDivLoss(reduction='batchmean')
    def forward(self, y, labels, student_scores=None, teacher_scores=None, T=1, alpha=0.5, eval=False):
        # y is the output of the student network
        # dimension of y is (batch_size=64, num_classes=2)
        # cross_entropy is the same as nll_loss with log_softmax
        if eval:
            return F.cross_entropy(torch.exp(y), labels) 
        with open("./test_softmax_logsoftmax_scores.txt","a") as f:
            f.writelines(["CROSS ENTROPY LOSS= ",str(F.cross_entropy(torch.exp(y), labels) * (1. - alpha)) ,"DISTILLATION LOSS= ",str(self.loss(F.log_softmax(student_scores/T,dim=1), F.softmax(teacher_scores/T,dim=1)) * (T * T * 2.0 * alpha))])
            f.writelines("\n")        
        # return self.loss(F.log_softmax(student_scores/T,dim=1), F.softmax(teacher_scores/T,dim=1)) * (T * T * 2.0 * alpha) + F.cross_entropy(torch.exp(y), labels) * (1. - alpha) 
        return self.loss(F.log_softmax(student_scores/T,dim=1), F.softmax(teacher_scores/T,dim=1)) * (T * T * 2.0 * alpha) + F.nll_loss(y, labels) * (1. - alpha) 

class NllLoss(nn.Module):
    def __init__(self):
        super(NllLoss, self).__init__()
        self.loss = nn.NLLLoss()

    def forward(self, output, target):
        return self.loss(output[0], target)


class AngleLoss(nn.Module):
    def __init__(self, gamma=0):
        super(AngleLoss, self).__init__()
        self.gamma   = gamma
        self.it = 0
        self.LambdaMin = 5.0
        self.LambdaMax = 1500.0
        self.lamb = 1500.0

    def forward(self, input, target, eval=False):
        self.it += 1
        cos_theta, psi_theta = input
        target = target.view(-1,1) #size=(B,1)

        index = cos_theta.data * 0.0 #size=(B,Classnum)
        index.scatter_(1,target.data.view(-1,1),1)
        index = index.bool()     #to uint8
        index = Variable(index)

        self.lamb = max(self.LambdaMin, self.LambdaMax/(1+0.1*self.it ))
        output = cos_theta * 1.0 #size=(B,Classnum)
        output[index] -= cos_theta[index]*(1.0+0)/(1+self.lamb)
        output[index] += psi_theta[index]*(1.0+0)/(1+self.lamb)

        logpt = F.log_softmax(output, dim=1)
        logpt = logpt.gather(1,target)
        logpt = logpt.view(-1)
        pt = Variable(logpt.data.exp())

        loss = -1 * (1-pt)**self.gamma * logpt
        if not eval:
            loss = loss.mean()

        return loss