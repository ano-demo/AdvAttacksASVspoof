
GPU=1
sysid=A11

# SENet12
# python fgsm_attack2.py    --resume _saved/models/LA_SENet12_LPSseg_uf_seg600/20190623_182148/model_best.pth \
# 				  --sysid ${sysid} \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl_${sysid}.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores_${sysid}.txt \
#                   --device ${GPU}

# SENet34
# python fgsm_attack2.py    --resume _saved/models/LA_SENet34_LPSseg_uf_seg600/20190623_093457/checkpoint-epoch5.pth \
# 				  --sysid ${sysid} \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl_${sysid}.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores_${sysid}.txt \
#                   --device ${GPU}

# LCNN
# python fgsm_attack2.py    --resume _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/checkpoint-epoch3.pth \
# 				  --sysid ${sysid} \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl_${sysid}.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores_${sysid}.txt \
#                   --device ${GPU}

# LCNN attacks all TTS VC system:
# python fgsm_attack2.py    --resume _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/checkpoint-epoch3.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}

# SENet12 attacks all TTS VC system:
python fgsm_attack2.py    --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/model_best.pth \
                  --protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                  --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                  --device ${GPU}   

# Small LCNN+A-softmax attacks all TTS VC system:
# python fgsm_attack2.py    --resume _saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20190624_145447/model_best.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}  