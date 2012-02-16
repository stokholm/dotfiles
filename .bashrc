#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set some handy and safe aliases
alias ls='ls --color=auto'
alias ll='ls -Ahl'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias sudo='A=$(alias) sudo '

# Set the prompt
PS1='[\u@\h \W]\$ '
