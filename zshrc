# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/orang/.zshrc'


# Zsh git prompt
source ~/.zsh/git-prompt.zsh/git-prompt.zsh
source ~/.zsh/git-prompt.zsh/examples/multiline.zsh
# Starship cross-platform prompt
# eval "$(starship init zsh)"

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.zsh/zsh-vim-mode/zsh-vim-mode.plugin.zsh

# Custom propmt
# PROMPT="%n@%F{blue}%m%f %F{yellow}%/%f
# %F{red}❯%f "

# Automatically do enter after entering the prompt
precmd(){
        precmd() {
                echo
        }
}

### Enviroment variable
export XDG_TEMPLATES_DIR="$HOME/Templates"
export TERM="xterm-256color"

### MANPAGER
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

### Package Manager
alias pacsyu="sudo pacman -Syu"
alias pacs="sudo pacman -S"
alias pacu="sudo pacman -U"
alias pacr="sudo pacman -R"
alias pacrcn="sudo pacman -Rcn"

### Directory
alias uri="cd ~/Code/URI"
alias docs="cd ~/Code/Docs"
alias dots="cd ~/.dotfiles"
alias pict="cd ~/Pictures"
alias dl="cd ~/Downloads"

### Edit File
alias zshrc="nvim ~/.zshrc"
alias i3conf="nvim ~/.config/i3/config"
alias alacrittyconf="nvim ~/.config/alacritty/alacritty.yml"
alias picomconf="sudo nvim /etc/xdg/picom.conf"
alias vimrc="nvim ~/.vimrc"
alias polybarconf="nvim ~/.config/polybar/config"
alias kittyconf="nvim ~/.config/kitty/kitty.conf"
alias uspy="nvim ~/.config/coc/ultisnips/python.snippets"
alias nvimrc="nvim ~/.config/nvim/init.vim"


### Another
alias savez="source ~/.zshrc"
alias 8="ping 8.8.8.8"
alias net="systemctl status NetworkManager"
alias svg="feh --conversion-timeout 1"
alias enofetch="neofetch"

### Hardware
alias cpuspd="watch -n.5 \"cat /proc/cpuinfo | grep -i mhz\""
alias brightness="brightnessctl -d amdgpu_bl0 set"

### Changed default command
alias ls="ls -l --color=auto"
alias lsa="ls -a"
alias v="vim"
alias x="exit"
alias c="clear"
alias free="free -h"
alias py="python"
alias cat="bat"
alias find="fd"
alias ps="procs"

### Git
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gbd="git branch -d"
alias gl="git log"
alias glp="git log -p"
alias glg="git log --color --oneline --graph"
alias gc="git commit"
alias gcm="git commit -m"
alias gce="git commit --allow-empty-message -m ''"
alias gca="git commit -a"
alias gcam="git commit -am"
alias gcl="git clone"
alias gpush="git push"
alias gpull="git pull"
alias gs="git switch"
alias gst="git status"
alias gr="git restore --staged"



autoload -Uz compinit
compinit
# End of lines added by compinstall
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin
