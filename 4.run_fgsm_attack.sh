# sysid=A11
# /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230113_161026/model_best.pth
# /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230113_152328/model_best.pth
# /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230113_175511/model_best.pth
# /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/model_best.pth


GPU=3

echo adversarial data SENet34, clipped 2k-4k

python fgsm_attack2.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/model_best.pth \
                        --protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                        --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                        --device ${GPU}

echo DONE
exit

GPU=2

echo adversarial data SENet12, clipped 2k-4k

python fgsm_attack2.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230113_175511/model_best.pth \
                        --protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                        --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                        --device ${GPU}

echo DONE
exit