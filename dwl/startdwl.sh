#!/bin/bash

export XDG_CURRENT_DESKTOP=dwl
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP XDG_CONFIG_HOME &

#waybar &
#yambar &
# dwmblocks for dwl
oguri &
wlsunset -L 41.50 -l 12.30 &
dunst &
someblocks
