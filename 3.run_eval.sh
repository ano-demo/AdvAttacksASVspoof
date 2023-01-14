
GPU=2 #cannot run with multiple GPU for now


for num in `seq 1 27`; do
echo CUMBERSOME SENet34
echo $num
echo "\n"
python eval.py --resume  /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221129_134503_e4/checkpoint-epoch${num}.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221129_EVAL_epoch${num}__SENet34_BS512LRe4_.txt
done
exit
exit()
#/data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20221114_211710 


for num in `seq 1 40`; do
echo  LCNN Half
echo $num
echo "\n"
python eval.py --resume  /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20221115_112707/checkpoint-epoch${num}.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221115_EVAL_epoch${num}__LCNNHalf_BS16LR0.0001_.txt
done
exit
exit()





for num in `seq 1 56`; do
echo CUMBERSOME
echo $num
echo "\n"
python eval.py --resume  /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221114_132025_b256e5/checkpoint-epoch${num}.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221114_EVAL_epoch${num}__SENet34BS256LRe5_.txt
done
exit
exit()


echo DISTILL
for num in `seq 1 27` ; do
echo $num
echo "\n"

python eval.py --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221110_183444_T1a0.5BS128LR0.00001_from_20221110SE34/checkpoint-epoch${num}.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221114_EVAL_epoch${num}_T1a0.5_SENet12_DISTILL_128e5_CE_.txt
done
exit
exit()












echo DISTILL
for num in `seq 1 48` ; do
echo $num
echo "\n"

python eval.py --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221112_222049_64e4_nll/checkpoint-epoch${num}.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221113_EVAL_epoch${num}_T1a0.5_SENet12_DISTILL_64e4_.txt
done
exit
exit()
















GPU=1
echo NoDISTILL
for num in 1 2 3 4 5 6 7 8 9 ; do
echo $num
echo "\n"
python eval.py --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221101_110205_NOdistill/checkpoint-epoch${num}.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221107_EVAL_epoch${num}_T1a0.3_SENet12NODISTILL_.txt
done
exit
exit()



GPU=3
for num in 1 2 3 4 5 6 7 8 9 ; do
echo $num
echo "\n"
python eval.py --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221107_161924/checkpoint-epoch${num}.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221107_EVAL_epoch${num}_T1a0.3_SENet12_.txt
done
exit
exit()

GPU=0,1

python eval.py --resume /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221013_053132/model_best.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221020_EVAL_dimdefault.txt
exit
exit()
GPU=0,1


echo "SENET12" >> /data/longnv/OutDir/result__20221020_EVAL.txt
python eval.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221019_184112_dim1/model_best.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221020_EVAL_dim1.txt

echo "end eval"

GPU=0,1

exit
exit()

echo "SENET12" >> /data/longnv/OutDir/result__20221020_EVAL.txt
python eval.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221020_152656dimminus1/model_best.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221020_EVAL_dimminus1.txt

exit
exit()
echo "LCNN HALF" >> /data/longnv/OutDir/result__20220605_EVAL.txt     
python eval.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20220603_083303/model_best.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20220605_EVAL.txt




echo "LCNN" >> /data/longnv/OutDir/result__20220605_EVAL.txt
python eval.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20220603_103336/model_best.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.eval.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.eval.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20220605_EVAL.txt


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
