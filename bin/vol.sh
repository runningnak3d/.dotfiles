#!/bin/sh
# fbvolhelper script to control/display volume and mute using aosd_cat
# see ~/.fluxbox/keys
# :Exec fbvolhelper.sh up|down|mute

SCONTROL=Master
OSDFONT="terminus bold 20"
STEP=5

case "$1" in
        up)
		amixer -q sset $SCONTROL,0 unmute
		VOLSTR=$(amixer sset $SCONTROL,0 $STEP+ | egrep -om 1 '[0-9]+%')
		OSDSTR="Vol: $VOLSTR"
	;;
        down)
		amixer -q sset $SCONTROL,0 unmute
		VOLSTR=$(amixer sset $SCONTROL,0 $STEP- | egrep -om 1 '[0-9]+%')
		OSDSTR="Vol: $VOLSTR"
	;;
        mute)
		MUTESTR=$(amixer sset $SCONTROL,0 toggle | egrep -om 1 '\[o+[a-z]+\]')
		case "$MUTESTR" in
			\[off\])	MUTESTATE="ON"	;;
			\[on\])		MUTESTATE="OFF"	;;
		esac
		OSDSTR="Mute: $MUTESTATE"
	;;
	*) exit
esac

killall -q aosd_cat >/dev/null

echo $OSDSTR | \
aosd_cat -y 35 -x -10 -e 1 -p 2 -f 0 -u 1000 -o 0 \
-n "$OSDFONT" \
&>/dev/null
