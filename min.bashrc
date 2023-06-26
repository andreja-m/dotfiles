#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# default prompth
PS1='[\u@\h \W]\$ '

# personal pref

# ZINAT
alias nano='vi'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lah'
alias p='python'
alias cp='rsync --progress'
alias nv='nvim'

# default editor
export VISUAL=vim;
export EDITOR=vim;

# man page color scheme
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# rice
neofetch

# command timer on the right side of terminal prompth
source /home/arch/other/bash-command-timer/bash_command_timer.sh

# powerline prompth daemon
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# coloring and autosugestion in bash
source ~/.local/share/blesh/ble.sh

