# Attack 4 denoised MODELS
# lcnn half /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth
# lcnn /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth
# senet12 /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth
# senet34 /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth
echo pgd attack denoised models...

# python pgd_attack.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
# 						--epsilon 5.0 \
#                   		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
#                 	    --device 0 &

# python pgd_attack.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
# 						--epsilon 5.0 \
#                   		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
#                 	    --device 1 &

python pgd_attack_2.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device 2 &

python pgd_attack_2.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device 3 &
echo DONE
exit


# Attack  all 8 models 100-5k
# LCNN half trained with original data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/model_best.pth
# LCNN half trained with clipped data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/model_best.pth
# LCNN trained with original data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/model_best.pth
# LCNN trained with clipped data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/model_best.pth

# SENet12 trained with original data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth
# SENet12 trained with clipped data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/model_best.pth
# SENet34 trained with original data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth
# SENet34 trained with clipped data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/model_best.pth




python pgd_attack_2.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device 0 &

python pgd_attack_2.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device 1 &

python pgd_attack_2.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device 2 &

python pgd_attack_2.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device 3 &
echo DONE
exit



python pgd_attack.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device 0 & 


python pgd_attack.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device 1 &

python pgd_attack.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device 2 &

python pgd_attack.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/model_best.pth \
						--epsilon 5.0 \
                  		--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                	    --device 3 &


echo DONE
exit
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
						