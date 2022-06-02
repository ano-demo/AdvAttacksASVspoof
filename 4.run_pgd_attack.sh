
GPU=0
# sysid=A11


python pgd_attack.py    --resume _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/model_best.pth \
                  		--protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                  		--asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                  		--device ${GPU}  