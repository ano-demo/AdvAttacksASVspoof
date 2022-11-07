GPU=0,1


echo "SENET12 T4" >> /data/longnv/OutDir/result__20221021_DEV.txt
    
python develop.py  --resume  /data/longnv/_saved/models/LA_SENet34_LPSseg_uf_seg600/20221013_053132T4/model_best.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.dev.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.dev.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221021_DEV_T4.txt
exit
exit()

GPU=0,1,2,3
    
python develop.py  --resume  /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221023_012458/model_best.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.dev.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.dev.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221024_EVAL_T4.txt


exit
exit()
GPU=0,1


echo "SENET12" >> /data/longnv/OutDir/result__20221020_DEV.txt
    
python develop.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221019_184112_dim1/model_best.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.dev.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.dev.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221020_DEV_dim1.txt  

GPU=0,1


echo "SENET12" >> /data/longnv/OutDir/result__20221020_DEV.txt
    
python develop.py  --resume /data/longnv/_saved/models/LA_SENet12_LPSseg_uf_seg600/20221020_152656dimminus1/model_best.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.dev.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.dev.gi.trl.scores.txt \
                    --device ${GPU} >> /data/longnv/OutDir/result__20221020_DEV_dimminus1.txt    


exit
exit()

echo "LCNN HALF" >> /data/longnv/OutDir/result__20220603.txt     
python develop.py  --resume /data/longnv/_saved/models/LA_lcnnHalf_LPSseg_uf_seg600/20220603_083303/model_best.pth \
                   --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.dev.trl.txt \
                   --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.dev.gi.trl.scores.txt \
                   --device ${GPU} >> /data/longnv/OutDir/result__20220603.txt    

echo "LCNN " >> /data/longnv/OutDir/result__20220603.txt      
python develop.py  --resume /data/longnv/_saved/models/LA_lcnn_LPSseg_uf_seg600/20220603_103336/model_best.pth \
                    --protocol_file  /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_cm_protocols/ASVspoof2019.LA.cm.dev.trl.txt \
                    --asv_score_file /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_asv_scores/ASVspoof2019.LA.asv.dev.gi.trl.scores.txt --device ${GPU} >> /data/longnv/OutDir/result__20220603.txt    
                       

    