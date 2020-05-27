#!/bin/bash
# 2020-27-5 Calvin Huang
# Uses xwinwrap to display a given video file as the desktop backgroun

# end previous instances
killall -9 xwinwrap
killall -9 mpv

# Retrieve wallpaper saved directory
wallpaper=$(cat /home/calvang/Documents/liveWall/wallpaperSave)
dimensions=`xdpyinfo | awk '/dimensions/{print $2}'`

echo "Starting xwinwrap..."

# Wraps wallpaperLive script and sets video on desktop
xwinwrap -g ${dimensions}+0+0 -un -fdt -ni -b -nf -- /home/calvang/Documents/liveWall/wallpaperLive WID $wallpaper &

# For multiple monitors add more xwinwrap instances
