
GPU=0

# python develop.py --resume _saved/models/PA_SENet34_LPS_uf_seg200hop100/20190424_220438/model_best.pth \
#                   --protocol_file data/ASVspoof2019.PA.cm.dev.trl.txt \
#                   --asv_score_file data/ASVspoof2019_PA_dev_asv_scores_v1.txt \
#                   --device ${GPU}


# python develop.py --resume _saved/models/PA_SENet34_LPS_uf_seg400hop200/20190426_093940/model_best.pth \
#                   --protocol_file data/ASVspoof2019.PA.cm.dev.trl.txt \
#                   --asv_score_file data/ASVspoof2019_PA_dev_asv_scores_v1.txt \
#                   --device ${GPU}

# python develop.py --resume _saved/models/LA_lcnnSmall_LPSseg_uf_seg600_noEmph/20190618_191154/model_best.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.dev.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.dev.gi.trl.scores.txt \
#                   --device ${GPU}



# python develop2.py --resume _saved/models/config_LA_lcnnSmall4_LPS_257_uf_seg400hop200/20190620_083937/model_best.pth \
#                   --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.dev.trl.txt \
#                   --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.dev.gi.trl.scores.txt \
#                   --device ${GPU}

python develop.py  --resume _saved/models/LA_lcnn_LPSseg_uf_seg600/20190620_121836/model_best.pth \
                    --protocol_file data_LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.dev.trl.txt \
                    --asv_score_file data_LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.dev.gi.trl.scores.txt \
                    --device ${GPU}    