
from metrics.evaluate_tDCF_asvspoof19_func import evaluate_tdcf_eer, evaluate_eer
import sys
import json
import ast


# with open("log_test2.txt","r") as f:
#     utts = f.readlines()

# print(utts[-3:])
# # sys.exit(1)
# utt2scores = dict()
# for utt in utts[:5]:
#     line = json.loads(utt[:-1])
#     # print(line)
#     utt2scores[line["utt_id"]] = line["utt2score"]

# # x = ast.literal_eval("'"+utt[0][:-1]+"'")


# #sys.exit(1)

# protocol_file = "/data/longnv/trn_dev_eval_scps/ASVspoof2021_DF_eval.scp"
# with open(protocol_file, 'r') as f:
#     protocol_file_lines = [line.strip().split(' ') for line in f]

# cm_score_file = "/data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/cm_score_eval_allSys.txt"
# with open(cm_score_file, 'w') as f:
#     for line in protocol_file_lines:
#         # logger.info({"line":line[0]})
#         utt_id = line[0]
#         label = line[-1]
    
#         sco = utt2scores[utt_id]
#         f.write(utt_id+" "+"-"+" "+label+" "+str(sco)+"\n")


cm_score_file = "/data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/cm_score_eval_allSys.txt"
 
eer, eer_point = evaluate_eer(cm_score_file)

print(eer)
print(eer_point)