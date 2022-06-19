
GPU=1

sysid=A11


echo "LCNN half" >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt

epsilon=0.1
python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20220603_083303/model_best.pth \
				--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_${epsilon} \
				--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                --device ${GPU} >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt

epsilon=1.0
python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20220603_083303/model_best.pth \
				--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_${epsilon} \
				--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                --device ${GPU} >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt

epsilon=5.0
python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20220603_083303/model_best.pth \
				--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_${epsilon} \
				--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                --device ${GPU} >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt



echo "LCNN" >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt


epsilon=0.1
python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20220603_103336/model_best.pth \
				--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_${epsilon} \
				--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                --device ${GPU} >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt

epsilon=1.0
python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20220603_103336/model_best.pth \
				--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_${epsilon} \
				--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                --device ${GPU} >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt

epsilon=5.0
python eval_adv.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20220603_103336/model_best.pth \
				--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_${epsilon} \
				--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                --device ${GPU} >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt


echo "SENet" >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt


epsilon=0.1
python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/model_best.pth \
				--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_${epsilon} \
				--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                --device ${GPU} >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt

epsilon=1.0
python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/model_best.pth \
				--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_${epsilon} \
				--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                --device ${GPU} >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt

epsilon=5.0
python eval_adv.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/model_best.pth \
				--adv_data /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_${epsilon} \
				--protocol_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt  \
                --device ${GPU} >> /data/longnv/OutDir/result_20220610_EVAL_ADV_SEnet12.txt