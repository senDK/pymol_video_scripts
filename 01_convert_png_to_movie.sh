mencoder "mf://*.png" -o movie.avi -ovc lavc -lavcopts vcodec=mjpeg
#ffmpeg -i movie.avi -s 640x480 -b 1024k -vcodec mpeg1video -acodec copy lowquality12mb.avi
#ffmpeg -i movie.avi -s 640x480 -b 512k -vcodec mpeg1video -acodec copy lowquality6mb.avi
