


configPath1=_configs/config_LA_SENet12_LPSseg_uf_seg600_distillation.json
GPU1=1

python train_distillation.py --config ${configPath1} --device ${GPU1} #> /dev/null 2>&1 &

exit
configPath1=_configs/config_LA_SENet12_LPSseg_uf_seg600.json
GPU1=1

python train.py --config ${configPath1} --device ${GPU1} #> /dev/null 2>&1 &



configPath1=_configs/config_LA_lcnnHalf_LPSseg_uf_seg600.json
GPU1=1

python train.py --config ${configPath1} --device ${GPU1} #> /dev/null 2>&1 &



configPath1=_configs/config_LA_lcnn_LPSseg_uf_seg600.json
GPU1=1

python train.py --config ${configPath1} --device ${GPU1} #> /dev/null 2>&1 &
