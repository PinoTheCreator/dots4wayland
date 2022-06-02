#!/bin/bash

VALUE=$(cat /sys/class/hwmon/hwmon3/temp1_input | head -c -4)

#while true; do
	echo " $VALUE%"
#	sleep 10
#done
