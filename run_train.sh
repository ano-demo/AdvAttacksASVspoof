

configPath1=_configs/config_LA_SENet12_LPSseg_uf_seg600.json
GPU1=0

python train.py --config ${configPath1} --device ${GPU1} #> /dev/null 2>&1 &



# ps -ef  | grep python
# kill -9 ps_id
