#!/bin/sh
export PID_EXTMON=`ps -ef | grep polybar | grep extmon | grep -v xdo | awk '{ print $2 }'`
export PID_TOP_L=`ps -ef | grep polybar | grep top_l | grep -v top2 | grep -v xdo | awk '{ print $2 }'`
export PID_TOP_M=`ps -ef | grep polybar | grep top_m | grep -v top2 | grep -v xdo | awk '{ print $2 }'`
export PID_TOP_R=`ps -ef | grep polybar | grep top_r | grep -v top2 | grep -v xdo | awk '{ print $2 }'`
polybar-msg -p $PID_EXTMON cmd quit
xrandr --output eDP-1 --auto --output HDMI-1 --off --output DVI-I-1-1 --off
polybar-msg -p $PID_TOP_L cmd restart
polybar-msg -p $PID_TOP_M cmd restart
polybar-msg -p $PID_TOP_R cmd restart
