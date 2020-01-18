#!/bin/bash
killall -9 xdotool
sleep 3
export PID_TOP=`ps -ef | grep polybar | grep top | grep -v xdo | awk '{ print $2 }'`
export PID_BOTTOM=`ps -ef | grep polybar | grep bottom | grep -v xdo | awk '{ print $2 }'`
/usr/bin/xdotool behave_screen_edge bottom exec polybar-msg -p $PID_BOTTOM cmd show &
/usr/bin/xdotool behave_screen_edge top exec polybar-msg -p $PID_TOP cmd show &
