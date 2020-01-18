#!/bin/zsh
##ps -ef | grep polybar-msg | grep -v grep | grep -v defunct | grep -v xdo>& /dev/null
#PCOUNT=`ps -ef | grep pb_sh.sh | grep -v grep | wc -l`
FILE=/tmp/pb_shown
while true
do
if [[ ! -a $FILE ]]; then
	echo "no file"
	continue
else
#	polybar-msg cmd show
	sleep 10
	polybar-msg cmd hide
	rm /tmp/pb_shown
fi
done
