#!/bin/sh
xinit ~/.xinitrc2 -- /usr/bin/X :2 -xf86config xorg.conf.DL2 -novtswitch -sharevts -audit 0 -layout "Screen Layout" vt12 &
sleep 5
x2x -west -from :1 -to :2 &
