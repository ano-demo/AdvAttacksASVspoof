# SOX
for i in `find  /datac/longnv/ASVspoof_nosilence/LA/ASVspoof2019_LA_train/flac -name "*.flac"`; do 
j=`echo $i | cut -d"/" -f8`;  
echo $i; echo $j;
sox $i ASVspoof2019_LA_train/flac/$j sinc 100-5k ;done

for i in `find  /datac/longnv/ASVspoof_nosilence/LA/ASVspoof2019_LA_dev/flac -name "*.flac"`; do 
j=`echo $i | cut -d"/" -f8`;  
echo $i; echo $j;
sox $i ASVspoof2019_LA_dev/flac/$j sinc 100-5k ;done

for i in `find  /datac/longnv/ASVspoof_nosilence/LA/ASVspoof2019_LA_eval/flac -name "*.flac"`; do 
j=`echo $i | cut -d"/" -f8`;  
echo $i; echo $j;
sox $i ASVspoof2019_LA_eval/flac/$j sinc 100-5k ;done 

# DENOISE
python  denoise_asv.py /data/Dataset/ASVspoof/LA/ASVspoof2019_LA_dev/flac/ \ 
                       /datad/temp_data/ASVspoof_denoise/LA/ASVspoof2019_LA_dev/flac