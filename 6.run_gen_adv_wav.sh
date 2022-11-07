


# echo "Generating wav files, pertubation epsilon=0.1"
# python gen_adv_wav.py --eval_protocol /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                       --flac_dir /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_eval/flac/ \
#                       --adv_spec_dir /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_0.1/

echo "Generating wav files, pertubation epsilon=5.0"
python gen_adv_wav.py --eval_protocol /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --flac_dir /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_eval/flac/ \
                    --adv_spec_dir /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/pgd_adv_egs_None_5/
                    # --adv_spec_dir /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_5.0/

# echo "Generating wav files, pertubation epsilon=100.0"
# python gen_adv_wav.py --eval_protocol /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
#                     --flac_dir /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_eval/flac/ \
#                     --adv_spec_dir /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20220603_065018/fgsm_adv_egs_None_100.0/
# python gen_adv_wav.py  --adv_spec_dir _saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20190624_145447/pgd_adv_egs_None_10.0

# python gen_adv_wav.py  --adv_spec_dir _saved/models/LA_SENet12_LPSseg_uf_seg600/20190623_182148/pgd_adv_egs_None_10.0

