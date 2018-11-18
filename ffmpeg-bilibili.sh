#!/bin/bash
clear
echo processing...
rm title.flv
ffmpeg -i title.mp4 -vcodec libx264 -preset veryslow -profile:v high -level:v 4.1 -x264-params keyint=270:min-keyint=30 -pix_fmt yuv420p -b:v 1780k -s 1920x1080 -r 60 -pass 1 -acodec aac -ac 2 -ab 192k -ar 44100 -f flv title -y && ffmpeg -i title -vcodec libx264 -preset veryslow -profile:v high -level:v 4.1 -x264-params keyint=270:min-keyint=30 -pix_fmt yuv420p -b:v 1780k -s 1920x1080 -r 60 -pass 2 -acodec aac -ac 2 -ab 192k -ar 44100 title.flv
rm title
clear
echo DONE!
