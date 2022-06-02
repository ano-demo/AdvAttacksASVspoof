
GPU=2


python eval3.py    --resume _saved/models/LA_SENet12_LPSseg_uf_seg600/20190628_185040/checkpoint-epoch7.pth \
                  --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                  --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                  --device ${GPU}

# python eval3.py    --resume _saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20190624_145447/model_best.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}

# python develop.py --resume _saved/models/PA_SENet34_LPS_uf_seg200hop100/20190424_220438/model_best.pth \
#                   --protocol_file data/ASVspoof2019.PA.cm.dev.trl.txt \
#                   --asv_score_file data/ASVspoof2019_PA_dev_asv_scores_v1.txt \
#                   --device ${GPU}


# python develop.py --resume _saved/models/PA_SENet34_LPS_uf_seg400hop200/20190426_093940/model_best.pth \
#                   --protocol_file data/ASVspoof2019.PA.cm.dev.trl.txt \
#                   --asv_score_file data/ASVspoof2019_PA_dev_asv_scores_v1.txt \
#                   --device ${GPU}

# python eval.py    --resume _saved/models/LA_lcnnSmall_LPSseg_uf_seg600_noEmph/20190618_191154/model_best.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}


# python eval.py    --resume _saved/models/LA_lcnnSmall_LPSseg_uf_seg600_noEmph/20190618_191154/checkpoint-epoch2.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}

# python eval2.py    --resume _saved/models/config_LA_lcnnSmall3_LPS_257_uf_seg400hop200/20190619_231629/checkpoint-epoch1.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
#                   --device ${GPU}


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