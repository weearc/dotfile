function ffmpeg-bilibili-cuda
	echo "Press any key to continue or press Ctrl^C to stop..."
	read -s -n1 -p "test"
	
	ffmpeg -i $argv[1] \
		-hwaccel cuda \
		-hwaccel_output_format cuda \
		-c:v h264_nvenc \
		-vcodec libx264 \
		-preset veryslow \
		-profile:v high \
		-level:v 4.1 \
		-x264-params keyint=270:min-keyint=30 \
		-pix_fmt yuv420p \
		-b:v 1780k \
		-s 1920x1080 \
		-r 60 \
		-pass 1 \
		-acodec aac \
		-ac 2 \
		-ab 192k \
		-ar 44100 \
		-f flv tmpfile -y
	and ffmpeg -i tmpfile \
		-hwaccel cuda \
  		-hwaccel_output_format cuda \
  		-c:v h264_nvenc \
		-vcodec libx264 \
		-preset veryslow \
		-profile:v high \
		-level:v 4.1 \
		-x264-params keyint=270:min-keyint=30 \
		-pix_fmt yuv420p \
		-b:v 1780k \
		-s 1920x1080 \
		-r 60 \
		-pass 2 \
		-acodec aac \
		-ac 2 -ab 192k \
		-ar 44100 $argv[1].flv
	rm -rf ffmpeg* || true
	rm -rf tmpfile* || true
	echo "Done"
end
