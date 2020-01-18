#!/bin/sh
xrandr --output eDP-1 --off --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DVI-I-1-1 --mode 1920x1080 --pos 1923x0 --rotate normal
sleep 2
export PID_TOP=`ps -ef | grep polybar | grep top | grep -v xdo | awk '{ print $2 }'`
export PID_BOTTOM=`ps -ef | grep polybar | grep bottom | grep -v xdo | awk '{ print $2 }'`
polybar-msg -p $PID_TOP cmd restart
polybar-msg -p $PID_BOTTOM cmd restart
bar2.sh
