#!/bin/sh
notify-send "Switching to external monitor"
sleep 1
notify-send "Enabling HDMI1 and HDMI2" && xrandr --output HDMI1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP-1-1 --off --output HDMI-1-1 --mode 1920x1080 --pos 3840x0 --rotate normal --output DP-1-1 --off
sleep 1
xrandr --setprovideroutputsource 1 0
#xrandr --setprovideroutputsource 2 0
notify-send "Enabling UDB Monitor" && xrandr --output DVI-I-1-1 --auto --left-of HDMI1
sleep 1
notify-send "Switched"
