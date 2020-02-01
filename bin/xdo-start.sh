#!/bin/bash
killall -9 xdotool
sleep 3
export PID_TOP_L=`ps -ef | grep polybar | grep top_l | grep -v xdo | awk '{ print $2 }'`
export PID_TOP_M=`ps -ef | grep polybar | grep top_m | grep -v xdo | awk '{ print $2 }'`
export PID_TOP_R=`ps -ef | grep polybar | grep top_r | grep -v xdo | awk '{ print $2 }'`
export PID_BOTTOM=`ps -ef | grep polybar | grep bottom | grep -v xdo | awk '{ print $2 }'`
/usr/bin/xdotool behave_screen_edge bottom exec polybar-msg -p $PID_BOTTOM cmd show &
/usr/bin/xdotool behave_screen_edge top exec polybar-msg -p $PID_TOP_L cmd show &
/usr/bin/xdotool behave_screen_edge top exec polybar-msg -p $PID_TOP_M cmd show &
/usr/bin/xdotool behave_screen_edge top exec polybar-msg -p $PID_TOP_R cmd show &
