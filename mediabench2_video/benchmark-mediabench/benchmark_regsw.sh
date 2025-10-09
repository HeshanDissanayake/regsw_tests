# this script is meant to be run on the cva6-skd, so the directory structure is expected as that
set -x

echo " |--------- running JPEG benchmarks ---------| "
cd /home/jpeg-6b-build
./cjpeg_regsw -dct int -quality 13 -outfile output_base_4CIF_96bps.jpg ../input_data/input_base_4CIF.ppm
./djpeg_regsw -dct int -ppm -outfile output_base_4CIF_96bps_dec.ppm ../input_data/input_base_4CIF_96bps.jpg
cd ../../
echo " |-------------------------------------------| "


echo " |--------- running h263 benchmarks ---------| "
cd /home/tmndec-1.7-build
./tmndec_regsw -o3 ../input_data/input_base_4CIF_96bps.263 output_base_4CIF_96bps_dec
cd /home/tmn-1.7-build
./tmn_regsw -x 4 -a 0 -b 8 -s 15 -G -R 30.00 -r 3508000 -S 3 -Z 30.0 -O 0 -i ../input_data/input_base_4CIF_0to8.yuv -o output_base_4CIF_96bps_15.raw -B output_base_4CIF_96bps_15.263


# ./h264dec input_base_4CIF_96bps_decoder.cfg
# ./h264enc -d input_base_4CIF_96bps_encoder.cfg

# ./jpg2000dec -f input_base_4CIF_96bps.jp2 -F output_base_4CIF_96bps_dec.ppm -T pnm
# ./jpg2000enc -f input_base_4CIF.ppm -F output_base_4CIF_96bps.jp2 -T jp2 -O rate=0.010416667

# ./mpeg2dec -b input_base_4CIF_96bps.mpg -o3 output_base_4CIF_96bps_%03d
# ./mpeg2enc input_base_4CIF_96bps_15.par output_base_4CIF_96bps_15.mpg

# ./mpeg4dec.without_mmx -y -s 4cif -r 30 -an -g 9 -bf 3 -i input_base_4CIF_96bps.avi -s 4cif -an -y output_base_4CIF_96bps_dec_%03d.without_mmx.ppm
# ./mpeg4enc.without_mmx -s 4cif -r 30 -i input_base_4CIF_%03d.ppm -r 30 -s 4cif -b 39 -bf 3 -vcodec mpeg4 -an -vstats -y output_base_4CIF_96bps_15.without_mmx.avi

