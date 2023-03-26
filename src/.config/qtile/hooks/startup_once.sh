#!/usr/bin/env bash
xrandr -s 2560x1440
xset r rate 180 70
picom -b
nitrogen --restore
setxkbmap -option "caps:escape"
