#!/bin/bash
while :
do
	TV=`/opt/vc/bin/tvservice -s | cut -c 17-25`
	STATE=`cat /sys/class/net/wlan0/operstate`

	echo $TV
	if [ "$STATE" != "up" ]; then

		 if [ "$TV" != "TV is off" ]; then
		 	/opt/vc/bin/tvservice -o
		 fi
		 
		 killall VNC
	fi
	
	sleep 5
done
