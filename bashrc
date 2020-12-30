#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\u@\e[0;34m\h\e[m \e[1;36m\w\e[m\n↳ '

# Custom Aliases

# Package manager
alias pacu="sudo pacman -Syu"
alias paci="sudo pacman -S"
alias pacr="sudo pacman -R"
alias pacsrc="sudo pacman -Ss"
alias pacorphan="sudo pacman -Rs $(pacman -Qqtd)"

# Basic Commmand
alias free="free -h"
alias bashrc="vim ~/.bashrc"
alias savebash="source ~/.bashrc"
alias x="exit"
alias py="python3"
alias reboot="sudo reboot now"
alias ls="ls -lh --color=auto"
alias free="free -h"
alias project="cd ~/Code/Sekolah/project"
alias c="clear"
alias syslog="cat /var/log/syslog"
alias dmesg="sudo dmesg"
alias 8="ping 8.8.8.8"

# Systemd
alias net="systemctl status NetworkManager"

# Hardware
alias cpuspd="watch -n.5 \"cat /proc/cpuinfo | grep -i mhz\""
alias brightness="brightnessctl -d amdgpu_bl0 set"

# Directory Shortcut
alias docs="cd ~/Code/Docs"
alias config="vim ~/.config/i3/config"
alias alaconfig="vim ~/.config/alacritty/alacritty.yml"
alias vimrc="vim ~/.vimrc"
alias uri="cd ~/Code/URI"

# i#
alias logout="i3-msg exit"
