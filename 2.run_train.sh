echo "training LCNN-half model clipped" >> log.txt
configPath1=_configs/config_LA_lcnnHalf_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &

echo "done"

echo "training LCNN-full model clipped" >> log.txt
configPath1=_configs/config_LA_lcnn_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &

echo "done training two clipped models"


echo "training non-distilled SENet12 model" >> log.txt
configPath1=_configs/config_LA_SENet12_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &

echo "done"

echo "training big SENet34 model" >> log.txt
configPath1=_configs/config_LA_SENet34_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &

echo "done SE34"
exit
exit()






echo "distilling big model to small model"

configPath1=_configs/config_LA_SENet12_LPSseg_uf_seg600_distillation.json
#configPath1=_configs/config_LA_lcnnHalf_LPSseg_uf_seg600.json
GPU1=0,1,2,3

python train_distillation.py --config ${configPath1} --device ${GPU1} #> /dev/null 2>&1 &


exit
exit()


