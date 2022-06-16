#!/bin/bash

export XDG_CURRENT_DESKTOP=dwl

systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP XDG_CONFIG_HOME &

waybar &
wbg ~/Pictures/sunsetrailway.png &
wlsunset -L 41.50 -l 12.30 &
dunst &
foot --server &

#test ! $(pgrep swhks > /dev/null) && swhks &
#pkexec swhkd
