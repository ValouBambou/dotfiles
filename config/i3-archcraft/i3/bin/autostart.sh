#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
## Autostart Programs

# Kill already running process
_ps=(picom dunst ksuperkey mpd xfce-polkit xfce4-power-manager)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

# Fix cursor
xsetroot -cursor_name left_ptr

# Polkit agent
/usr/lib/xfce-polkit/xfce-polkit &

# Enable power management
xfce4-power-manager &

# Enable Super Keys For Menu
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

LAPTOP_MONITOR=eDP1
PREV_MONITOR=$LAPTOP_MONITOR
for m in $(xrandr --query | rg " connected" | cut -d" " -f1); do
  if [[ $m = "DP1-1" ]]; then
    xrandr --output $m --auto --right-of "DP1-3" 
  elif [[ $m != $LAPTOP_MONITOR ]]; then
    xrandr --output $m --auto --right-of $PREV_MONITOR
    PREV_MONITOR=$m
  fi
done

# Restore wallpaper
feh --bg-fill ~/.config/i3/wallpapers/default.png

# Lauch notification daemon
~/.config/i3/bin/i3dunst.sh

# Lauch polybar
~/.config/i3/bin/i3bar.sh

# Lauch compositor
~/.config/i3/bin/i3comp.sh


# Use right alt as compose key i.e accentued chars ralt+'+e = é
setxkbmap -option compose:ralt


# Start mpd
exec mpd &
