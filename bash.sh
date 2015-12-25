#!/bin/sh
while :
do
	if [ `cat /sys/class/net/eth0/operstate` == "up" ]; then
		 /home/pi/VNC 192.168.1.141 
	fi
	
	sleep 5
done
