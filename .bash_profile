#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Include the scripts folder in $PATH
export PATH=${HOME}/scripts:${PATH}

# Purge unwanted files
yes | purge

# Start the Music Player Daemon if it isn't running
[[ -z "$(pidof mpd)" ]] && mpd ${HOME}/.mpd/config 2>/dev/null

# Start X if it isn't running and we are on tty1
if [[ -z ${DISPLAY} ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx &>/dev/null
  logout
fi
