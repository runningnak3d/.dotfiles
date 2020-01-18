#!/bin/zsh
pavucontrol & disown
sleep .2
export WID=`xdotool search --onlyvisible --class Pavucontrol`
xdotool windowsize $WID 430 400
xdotool windowmove $WID 1270 30
