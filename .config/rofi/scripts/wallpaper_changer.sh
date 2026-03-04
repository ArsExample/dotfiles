#!/bin/bash

DIR="$HOME/Images/wallpapers"

WALLPAPER=$(for a in $DIR/*.jpg; do echo -en "$a\0icon\x1f$a\n" ; done | rofi -dmenu)

if [ -n "$WALLPAPER" ]; then
    swww img "$WALLPAPER"
	wal -i "$WALLPAPER"
fi
