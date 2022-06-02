#prepare list of training, dev (full dev or four fold)
RootDir="/data/longnv/OutDir"
echo 'Current Dir: '${RootDir}

extractLPS=1
if [ $extractLPS -eq 1 ]; then
    echo 'Extracting Log Power Spectrograms ...'
    python ./preprocess/compute_LPS.py --in_dir /data/Dataset/ASVspoof/ \
                                       --out_dir ${RootDir}/LPS_863 \
                                       --access_type LA \
                                       --param_json_path ./preprocess/conf/stft_T45.json
fi


extractLMS=0
if [ $extractLMS -eq 1 ]; then
    echo 'Extracting Log Magnitude Spectrograms ...'
    python ./preprocess/compute_LMS.py --in_dir /scratch/sxliu/projects/asvspoof/ASVspoof2019-data/ \
                                       --out_dir ${RootDir}/LMS \
                                       --access_type PA \
                                       --param_json_path ./preprocess/conf/stft.json
fi

