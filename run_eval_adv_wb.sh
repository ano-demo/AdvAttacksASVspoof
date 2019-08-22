
GPU=0

# sysid=A11

# epsilon=100.0


# LCNN model
# python eval3_adv.py    --resume _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/checkpoint-epoch3.pth \
# 					   --adv_data _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/fgsm_adv_egs_${sysid}_${epsilon} \
# 	                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl_${sysid}.txt \
# 	                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores_${sysid}.txt \
# 	                   --device ${GPU}

# origin performance of adv. attack
# python eval3_adv.py    --resume _saved/models/LA_SENet12_LPSseg_uf_seg600/20190623_182148/model_best.pth \
# 					   --adv_data _saved/models/LA_SENet34_LPSseg_uf_seg600/20190623_093457/fgsm_adv_egs_${sysid}_${epsilon} \
# 	                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl_${sysid}.txt \
# 	                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores_${sysid}.txt \
# 	                   --device ${GPU}

# Conduct black-box attack
# python eval3_adv.py    --resume _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/checkpoint-epoch3.pth \
# 					   --adv_data _saved/models/LA_SENet12_LPSseg_uf_seg600/20190623_182148/fgsm_adv_egs_${sysid}_${epsilon} \
# 	                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl_${sysid}.txt \
# 	                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores_${sysid}.txt \
# 	                   --device ${GPU}	                 


# Conduct black-box attack
# python eval3_adv.py    --resume _saved/models/LA_SENet12_LPSseg_uf_seg600/20190623_182148/checkpoint-epoch8.pth \
# 					   --adv_data _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/fgsm_adv_egs_${sysid}_${epsilon} \
# 	                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl_${sysid}.txt \
# 	                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores_${sysid}.txt \
# 	                   --device ${GPU}	

# for epsilon in 0.1 1.0 5.0 10.0 25.0 50.0 100.0
# do
# 	# Conduct white-box attack
# 	echo -------------------- epsilon = $epsilon ---------------------
# 	python eval3_adv.py    --resume _saved/models/LA_SENet12_LPSseg_uf_seg600/20190628_185040/model_best.pth \
# 						   --adv_data _saved/models/LA_SENet12_LPSseg_uf_seg600/20190628_185040/fgsm_adv_egs_None_${epsilon} \
# 		                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 		                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
# 		                   --device ${GPU}		                  
# done

# Conduct white-box attack
python eval3_adv.py    --resume _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/model_best.pth \
					   --adv_data _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/pgd_adv_egs_None_5.0 \
	                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
	                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
	                   --device ${GPU}


# # Conduct white-box attack
# python eval3_adv.py    --resume _saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20190624_145447/model_best.pth \
# 					   --adv_data _saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20190624_145447/pgd_adv_egs_None_5.0 \
# 	                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 	                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
# 	                   --device ${GPU}		                  


# for i in 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100
# do
# 	python eval2.py    --resume _saved/models/config_LA_lcnnSmall3_LPS_257_uf_seg400hop200/20190619_231629/checkpoint-epoch$i.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}
# done

# python eval2.py    --resume _saved/models/config_LA_lcnnSmall4_LPS_257_uf_seg400hop200/20190620_083937/model_best.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}





# python eval4.py    --resume _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/checkpoint-epoch3.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}


# python eval_tmp.py    --resume _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/checkpoint-epoch3.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}            