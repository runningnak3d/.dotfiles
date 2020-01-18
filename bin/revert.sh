#!/bin/sh
export PID_TOP2=`ps -ef | grep polybar | grep top2 | grep -v xdo | awk '{ print $2 }'`
export PID_TOP=`ps -ef | grep polybar | grep top | grep -v top2 | grep -v xdo | awk '{ print $2 }'`
polybar-msg -p $PID_TOP2 cmd quit
xrandr --output eDP-1 --auto --output HDMI-1 --off --output DVI-I-1-1 --off
polybar-msg -p $PID_TOP cmd restart
