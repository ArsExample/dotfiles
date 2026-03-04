#!/bin/sh
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

sleep 1

killall -e xdg-desktop-portal-hyprland
killall xdg-desktop-portal

dbus-launch /usr/lib/xdg-desktop-portal-hyprland &
sleep 2
dbus-launch /usr/lib/xdg-desktop-portal &
