amixer -D pulse sget 'Master' | grep Left: | awk '{ gsub(/\[/, " "); gsub(/%\]/, " "); print $5 }' |  aosd_cat --fore-color=white --font="bitstream bold 60" -p 7 --x-offset=0 --y-offset=-505 --transparency=1 -u 600 -o 0 && killall aosd_cat
#amixer -D pulse sget 'Master' | grep Left: | awk '{ gsub(/\[/, " "); gsub(/%\]/, " "); print $5 }' |  aosd_cat --fore-color=white --font="bitstream bold 60" -p 7 --x-offset=0 --y-offset=-505 --transparency=1 --fade-full=2500