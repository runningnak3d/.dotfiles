#!/bin/zsh
wicd-gtk & disown
sleep 1
WID=`xdotool search --onlyvisible --class Wicd-client.py`
#xdotool windowsize $WID 430 400
xdotool windowmove $WID 470 30
