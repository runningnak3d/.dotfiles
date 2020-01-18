#!/bin/sh
notify-send "Switching to internal monitor"
xrandr --output HDMI-1-2 --off --output eDP-1-1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1-1 --off --output DP-1-1 --off --output DVI-I-2-1 --off
notify-send "Switched"
