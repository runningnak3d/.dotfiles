ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :0 -f alsa -ac 2 -i pulse ~/Videos/$1
