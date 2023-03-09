#
# Train 4 basic models #2022-02-24 denoise.
#
echo "training LCNN-half model denoise" 
configPath1=_configs/config_LA_lcnnHalf_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &

echo "training LCNN-full model denoise" 
configPath1=_configs/config_LA_lcnn_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &


echo "training SENet12 model denoise" 
configPath1=_configs/config_LA_SENet12_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &


echo "training SENet34 model denoise" 
configPath1=_configs/config_LA_SENet34_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &

exit

#
# DONE Train 4 basic models denoise
# sudo mv  _-> make sure to reverse this after done



#
# Train 4 basic models #2022-02-22,23 Over 5k.
#
echo "training LCNN-half model over 5k" 
configPath1=_configs/config_LA_lcnnHalf_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &

echo "training LCNN-full model over 5k" 
configPath1=_configs/config_LA_lcnn_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &


echo "training SENet12 model over 5k" 
configPath1=_configs/config_LA_SENet12_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &


echo "training SENet34 model over 5k" 
configPath1=_configs/config_LA_SENet34_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &

exit

#
# DONE Train 4 basic models <Over 5k>
# sudo mv  _-> make sure to reverse this after done

#
# Train 4 basic models
#
echo "training LCNN-half model no silence" 
configPath1=_configs/config_LA_lcnnHalf_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &

echo "training LCNN-full model no silence" 
configPath1=_configs/config_LA_lcnn_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &


echo "training SENet12 model no silence" 
configPath1=_configs/config_LA_SENet12_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &


echo "training SENet34 model no silence" 
configPath1=_configs/config_LA_SENet34_LPSseg_uf_seg600.json
GPU=0,1,2,3

python train.py --config ${configPath1} --device ${GPU} #> /dev/null 2>&1 &

exit
#
# DONE Train 4 basic models <no silence Feb 08>
#


# Distillation

echo "distilling se34 (original) model to se12 (new) model with clipped (2k-4k) training data"

configPath1=_configs/config_LA_SENet12_LPSseg_uf_seg600_distillation.json
GPU1=0,1,2,3

python train_distillation.py --config ${configPath1} --device ${GPU1} #> /dev/null 2>&1 &


exit
exit()








echo "distilling big model to small model"

configPath1=_configs/config_LA_SENet12_LPSseg_uf_seg600_distillation.json
#configPath1=_configs/config_LA_lcnnHalf_LPSseg_uf_seg600.json
GPU1=0,1,2,3

python train_distillation.py --config ${configPath1} --device ${GPU1} #> /dev/null 2>&1 &


exit
exit()


