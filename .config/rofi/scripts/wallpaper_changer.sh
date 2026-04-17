#!/bin/bash

DIR="$HOME/Images/wallpapers"

WALLPAPER=$(for a in $DIR/*.jpg; do echo -en "$a\0icon\x1f$a\n" ; done | rofi -dmenu)

if [ -n "$WALLPAPER" ]; then
    swww img --transition-type random "$WALLPAPER"
	wal -s -i "$WALLPAPER"
fi
