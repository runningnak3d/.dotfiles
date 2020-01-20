#!/bin/zsh
DISPLAY2=$(xrandr | grep DVI | awk '{ print $1}')
if [[ $DISPLAY2 ]];
then
~/.screenlayout/kde.sh
polybar -r extmon &
fi
exit
