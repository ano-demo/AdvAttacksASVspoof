
# GPU=1
# # sysid=A11
# # /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/model_best.pth
# # /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth
# # SENet12
# echo "adversarial data SENet12, non clipped"
# python fgsm_attack2.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
#                         --protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                         --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                         --device ${GPU}


GPU=2
# SENet34
# /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/model_best.pth
# /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth
echo "adversarial data SENet34, non clipped"
python fgsm_attack2.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth \
                        --protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                        --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                        --device ${GPU}

echo DONE
exit
# LCNN
# python fgsm_attack2.py    --resume _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/checkpoint-epoch3.pth \
# 				  --sysid ${sysid} \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl_${sysid}.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores_${sysid}.txt \
#                   --device ${GPU}

# LCNN attacks all TTS VC system:
# /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/model_best.pth
# python fgsm_attack2.py      --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/model_best.pth \
#                             --protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                             --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                             --device ${GPU}


# exit
# exit()

# SENet12 attacks all TTS VC system:
# python fgsm_attack2.py    --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/model_best.pth \
#                   --protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
#                   --device ${GPU}   

# Small LCNN+A-softmax attacks all TTS VC system:
# python fgsm_attack2.py    --resume _saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20190624_145447/model_best.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}  