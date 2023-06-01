#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -lah'
alias p='python'
PS1='[\u@\h \W]\$ '

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
