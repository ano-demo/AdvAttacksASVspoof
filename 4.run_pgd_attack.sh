GPU=1
# num GPUs > 1 --> out of memory error
# sysid=A11
python pgd_attack_2.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device ${GPU}


exit
exit()





GPU=0
# num GPUs > 1 --> out of memory error
# sysid=A11
python pgd_attack_2.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221013_053132/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device ${GPU}


exit
exit()



python pgd_attack_2.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221029_181604/checkpoint-epoch8.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device ${GPU}


exit
exit()
python pgd_attack_2.py    --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/model_best.pth \
						--epsilon 0.1 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device ${GPU}
						

python pgd_attack_2.py    --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/model_best.pth \
                  		--epsilon 5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                  		--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device ${GPU}
						