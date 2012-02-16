#!/bin/sh
#
# ~/.xinitrc
#

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Set the root window background
hsetroot -center ${HOME}/personal/wallpaper.png

# Add local font path
xset +fp /usr/share/fonts/local
xset fp rehash

# Set the screen standby time
xset dpms 300

# Automatically lock session if inactive
xautolock -time 10 -locker slock -notify 30 &

# Allow local users to connect to the X server
xhost +local: >/dev/null

# Set the keyboard layout
setxkbmap dk

# Turn the terminal bell off
xset b off

# Update the text in dwm's status bar
while true; do
  xsetroot -name "$(dwmstatus)"
  sleep 5
done &

# Let the Window Manager take over
exec startdwm
