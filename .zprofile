# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#     exec Hyprland
# fi
#
# export EDITOR=nvim

# Запуск D-Bus сессии для Hyprland
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    # Запускаем D-Bus сессию и вместе с ней Hyprland
    exec dbus-run-session -- Hyprland
fi

export EDITOR=nvim
