#!/bin/bash
while :
do
	TV=`/opt/vc/bin/tvservice -s | cut -c 17-25`
	STATE=`cat /sys/class/net/wlan0/operstate 2>/dev/null`

	echo $TV
	echo $STATE

	if [ "$STATE" == "up" ]; then

		 if [ "$TV" == "TV is off" ]; then
		 	/opt/vc/bin/tvservice -p
		 	sudo chvt 9
		 	sudo chvt 7
		 fi
		 
		 sleep 3
		 /home/pi/VNC UserName=Guest SecurityNotificationTimeout=0 192.168.173.1
	fi
	
	sleep 2
done
