#!/bin/bash

DIR="$HOME/Images/wallpapers"

IMAGE=$(find $(readlink -f "$HOME/Images/wallpapers") -maxdepth 1 -type f | shuf -n 1)  # выбираем случайное изображение

swww img $IMAGE --transition-type none
wal -s -i $IMAGE
