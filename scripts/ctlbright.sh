#!/bin/bash

DEVICE="-d amdgpu_bl0"

case $1 in
	+)
		MODE="+"
		;;
	-)
		MODE="-"
		;;
	*)
		exit 1
		;;
esac

# no output
brightnessctl $DEVICE set 5%$MODE &> /dev/null

PERCENTAGE=$(expr $(brightnessctl $DEVICE g) '*' 100 '/' 255)

dunstify -a "multimedial" -r "10000" -h int:value:$PERCENTAGE -i "dialog-information" "Brightness: $PERCENTAGE%"
