#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias pacman-update='sudo pacman -Syu'
alias update-system='sudo pacman -Syu'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
