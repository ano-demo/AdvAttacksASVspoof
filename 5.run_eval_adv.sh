echo "attack senet12 and senet34"
# (9) denoised lcnn half  /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/pgd_adv_egs_None_5.0
# (10) denoised lcnn  /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/pgd_adv_egs_None_5.0
# (11) denoised senet12 /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/pgd_adv_egs_None_5.0
# (12) denoised senet34 /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/pgd_adv_egs_None_5.0 
# clip
# 	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/model_best.pth \
# 						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/pgd_adv_egs_None_5.0  \
# 						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
# 						--device 1	| tee -a LCNN_Half_clipped.text &

# 	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/model_best.pth \
# 						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/pgd_adv_egs_None_5.0  \
# 						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
# 						--device 2	| tee -a LCNN_clipped.text &


# 	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/model_best.pth \
# 						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/pgd_adv_egs_None_5.0   \
# 						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
# 						--device 3	| tee -a LCNN_Half_clipped.text &
# sleep 1800

# 	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/model_best.pth \
# 						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/pgd_adv_egs_None_5.0   \
# 						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
# 						--device 1	| tee -a LCNN_clipped.text &
# # denoise
# 	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
# 						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/pgd_adv_egs_None_5.0    \
# 						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
# 						--device 2	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a LCNN_denoise.txt &
# sleep 1800

# 	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
# 						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/pgd_adv_egs_None_5.0    \
# 						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
# 						--device 1	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a LCNN_denoise.txt &
# # original
# 	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/model_best.pth \
# 						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/pgd_adv_egs_None_5.0 \
# 						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
# 						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
# 						--device 3	| tee -a LCNN_half_original.text &
# sleep 1800

	# python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/model_best.pth \
	# 					--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/pgd_adv_egs_None_5.0 \
	# 					--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
	# 					--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
	# 					--device 1	| tee -a LCNN_original.text &
	
	# python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/model_best.pth \
	# 					--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/pgd_adv_egs_None_5.0 \
	# 					--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
	# 					--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
	# 					--device 2	| tee -a LCNN_half_original.text &
	# python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/model_best.pth \
	# 					--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/pgd_adv_egs_None_5.0 \
	# 					--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
	# 					--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
	# 					--device 3	| tee -a LCNN_original.text &
	
	


sleep 10
echo DONE
exit 

echo "attack ORIGINAL senet12 and senet34"	
# original SENet12 SENet12_original.text: /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth
# original SENet34 SENet34_original.text: /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth
# (9) denoised lcnn half  /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/pgd_adv_egs_None_5.0
# (10) denoised lcnn  /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/pgd_adv_egs_None_5.0
	
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a SENet12_original.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a SENet12_original.text &

	
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet34_original.text &
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet34_original.text &
	

echo DONE
exit


echo "attack denoise models using denoised pgd datasets"	# Datasets not available due to size.
# MODELS
# lcnn half /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth
# lcnn /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth
# senet12 /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth
# senet34 /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth
# DATASETS
# (1) old lcnn half non-clipped PGD /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0 
# (2) new lcnn half clipped PGD /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0 
# (3) old lcnn non-clipped PGD /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0 
# (4) new lcnn full clipped PGD /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0
# (5) old senet12 non-clipped PGD /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0 
# (6) new senet12 clipped PGD /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0 
# (7) old senet34 non-clipped PGD /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0 
# (8) new senet34 clipped PGD /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0

# (9) denoised lcnn half  /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/pgd_adv_egs_None_5.0
# (10) denoised lcnn  /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/pgd_adv_egs_None_5.0



exit

echo "attack denoise models using fgsm adv datasets"	# Datasets not available due to size.
# MODELS
# lcnn half /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth
# lcnn /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth
# senet12 /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth
# senet34 /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth
# DATASETS
# (1) old lcnn half non-clipped PGD /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0 
# (2) new lcnn half clipped PGD /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0 
# (3) old lcnn non-clipped PGD /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0 
# (4) new lcnn full clipped PGD /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0
# (5) old senet12 non-clipped PGD /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0 
# (6) new senet12 clipped PGD /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0 
# (7) old senet34 non-clipped PGD /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0 
# (8) new senet34 clipped PGD /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0

echo Round 1

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0    \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 2

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0    \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 3

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0    \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 4

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 5

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 6

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 7

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 8

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0\
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &



# evaluate with small-to-big models/data

echo DONE
exit

##########
#####denoise.end#####
##########






echo "attack denoise models using pgd adv datasets"	
# MODELS
# lcnn half /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth
# lcnn /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth
# senet12 /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth
# senet34 /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth
# DATASETS
# (1) old lcnn half non-clipped PGD /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0 
# (2) new lcnn half clipped PGD /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0 
# (3) old lcnn non-clipped PGD /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0 
# (4) new lcnn full clipped PGD /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0
# (5) old senet12 non-clipped PGD /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0 
# (6) new senet12 clipped PGD /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0 
# (7) old senet34 non-clipped PGD /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0 
# (8) new senet34 clipped PGD /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0

echo Round 1

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0    \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 2

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0    \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 3

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0    \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 4

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 5

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 6

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 7

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &

sleep 2400
echo Round 8

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230224_123957/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230224_133103/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230224_152937/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0\
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet12_denoise.txt &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230224_155356/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_denoise.txt &



# evaluate with small-to-big models/data

echo DONE
exit

##########
#####denoise.end#####
##########
echo "attack senet12 and 34 using lcnn half and full trained with 100-5k"	
# (1) old lcnn half non-clipped PGD /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0 
# (2) new lcnn half clipped PGD /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0 
# (3) old lcnn non-clipped PGD /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0 
# (4) new lcnn full clipped PGD /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0

echo Round 1

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a SENet12_original_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a SENet12_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet34_original_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_LCNN_1005k_PGD.text &

echo Round 2
# echo sleeping 2400 seconds...
# sleep 2400

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a SENet12_original_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a SENet12_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet34_original_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_LCNN_1005k_PGD.text &

echo Round 3
# echo sleeping 2400 seconds...
# sleep 2400

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a SENet12_original_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a SENet12_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet34_original_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_LCNN_1005k_PGD.text &


echo sleeping 2400 seconds...
sleep 2400
echo Round 4
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0   \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a SENet12_original_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a SENet12_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a SENet34_original_LCNN_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a SENet34_LCNN_1005k_PGD.text &

echo sleeping 1800 seconds...
sleep 1800
# evaluate with small-to-big models/data

echo DONE
exit


echo "attack lcnn half and full using senet 12 and 34 trained with 100-5k"	
# (5) old senet12 non-clipped PGD /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/pgd_adv_egs_None_5.0 
# (6) new senet12 clipped PGD /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221130_130922_nondistilled_clipped/pgd_adv_egs_None_5.0 
# (7) old senet34 non-clipped PGD /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/pgd_adv_egs_None_5.0 
# (8) new senet34 clipped PGD /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0


	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0  \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 0	| tee -a LCNN_half_original_SENet_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 1	| tee -a LCNN_half_SENet_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 2	| tee -a LCNN_original_SENet_1005k_PGD.text &

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/pgd_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device 3	| tee -a LCNN_SENet_1005k_PGD.text &



# evaluate with small-to-big models/data

echo DONE
exit





GPU=2
# /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/model_best.pth
# /data/longnv/OutDir/LPS_863

for i in 4 6 10 14 18 33 38 41 42 49 57 62 86; do echo $i;
	echo evaluate epoch $i
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/checkpoint-epoch${i}.pth \
						--adv_data /data/longnv/OutDir/LPS_863_original \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a senet34_original_original.text
done
exit




GPU=1
# /data/longnv/OutDir/LPS_863

for i in `seq 1 10`; do echo $i;
	echo evaluate epoch $i
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230205_192821/checkpoint-epoch${i}.pth \
						--adv_data /data/longnv/OutDir/LPS_863 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a distilled_senet12_2k4k_original_2k4k.text
done
exit


echo "test performance of 4 models (trained on original data) with normal data"
	echo lcnn_half >> Original_Original.text
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/model_best.pth \
						--adv_data /data/longnv/OutDir/LPS_863_original \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a Original_Original.text	

	echo lcnn >> Original_Original.text
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/model_best.pth \
						--adv_data /data/longnv/OutDir/LPS_863_original \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a Original_Original.text

	echo senet12 >> Original_Original.text					
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
						--adv_data /data/longnv/OutDir/LPS_863_original \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a Original_Original.text

	echo senet34 >> Original_Original.text					
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth \
						--adv_data /data/longnv/OutDir/LPS_863_original \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a Original_Original.text

echo done
exit

GPU=3
# The script below is used to attack lcnn-half, full

# LCNN_half_2k4k_SENet_2k4k.text: /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230113_152328/model_best.pth
# LCNN_2k4k_SENet_2k4k.text: /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230113_161026/model_best.pth

# LCNN_half_original_SENet_2k4k.text: /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/model_best.pth
# LCNN_original_SENet_2k4k.text: /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/model_best.pth

# adv data from senet 12 and 34, clipped 2k-4k
# senet12:  /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230113_175511/fgsm_adv_egs_None_5.0 
# senet34:  /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/fgsm_adv_egs_None_5.0

# echo "attack 2k-4k lcnn half and full using senet 12 and 34 trained with clipped 2k-4k"	
echo "attack original lcnn half and full using senet 12 and 34 trained with clipped 2k-4k"	

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230113_175511/fgsm_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a LCNN_half_original_SENet_2k4k.text 

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/fgsm_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a LCNN_half_original_SENet_2k4k.text 

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230113_175511/fgsm_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a LCNN_original_SENet_2k4k.text

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/fgsm_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a LCNN_original_SENet_2k4k.text



echo DONE
exit

GPU=2
# The script below is used to attack senet12, 34
# adv data from LCNN full and half, clipped 2k-4k
# SENet12_2k4k_LCNN_2k4k.text /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20230113_175511/model_best.pth
# SENet34_2k4k_LCNN_2k4k.text /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/model_best.pth

# original SENet12 SENet12_original_LCNN_2k4k.text: /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth
# original SENet34 SENet34_original_LCNN_2k4k.text: /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221110_120043_BS512_LR0.00001/model_best.pth
echo "attack senet12 and senet34 using LCNN half and full, clipped 2k-4k"	
	
	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20230113_152328/fgsm_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a SENet12_original_LCNN_2k4k.text

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221116_193008_NODISTILLED/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20230113_161026/fgsm_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a SENet12_original_LCNN_2k4k.text

	

echo DONE
exit
# The script below is used to attack senet34 
# adv data from LCNN full and half, clipped 100-5k and original

GPU=2
echo "senet34 2k-4k"

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/fgsm_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a SENet34_2k4k.text

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221129_184127/fgsm_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a SENet34_2k4k.text

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710/fgsm_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a SENet34_2k4k.text

	python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20230113_185148/model_best.pth \
						--adv_data /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221128_173044/fgsm_adv_egs_None_5.0 \
						--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
						--asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
						--device ${GPU}	| tee -a SENet34_2k4k.text