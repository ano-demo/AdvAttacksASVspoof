
GPU=1
# sysid=A11


python pgd_attack_2.py    --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/model_best.pth \
						--epsilon 0.1 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device ${GPU}
						

python pgd_attack_2.py    --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/model_best.pth \
                  		--epsilon 5 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                  		--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device ${GPU}
						