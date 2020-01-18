#!/bin/sh
sudo rmmod nvidia
xrandr --setprovideroutputsource 1 0
xrandr --output DVI-I-1-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output eDP-1 --off
