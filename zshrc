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

# Custom propmt
# PROMPT="%n@%F{blue}%m%f %F{yellow}%/%f
# %F{red}❯%f "

# Automatically do double enter after entering the prompt
precmd(){
        precmd() {
                echo
        }
}



# Package Manager aliases
alias pacsyu="sudo pacman -Syu"
alias pacs="sudo pacman -S"
alias pacu="sudo pacman -U"
alias pacr="sudo pacman -R"
alias pacorphan="sudo pacman -Rs $(pacman -Qqtd)"

# Directory
alias uri="~/Code/URI"
alias zshrc="vim ~/.zshrc"
alias i3="vim ~/.config/i3/config"
alias alacritty="vim ~/.config/alacritty/alacritty.yml"
alias picom="sudo vim /etc/xdg/picom.conf"
alias docs="cd ~/Code/Docs"
alias vimrc="vim ~/.vimrc"
alias polybar="vim ~/.config/polybar/config"

# Another
alias savez="source ~/.zshrc"
alias 8="ping 8.8.8.8"
alias net="systemctl status NetworkManager"

# Hardware
alias cpuspd="watch -n.5 \"cat /proc/cpuinfo | grep -i mhz\""

# Changed default command
alias ls="ls -lh --color=auto"
alias lsa="ls -a --color=auto"
alias v="vim"
alias x="exit"
alias c="clear"
alias free="free -h"

# Git
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gl="git log"
alias glp="git log -p"
alias glg="git log --color --oneline --graph"
alias gc="git commit -m"
alias gce="git commit --allow-empty-message -m ''"
alias gca="git commit -a -m"
alias gcl="git clone"
alias gp="git push"
alias gs="git switch"
alias gst="git status"
alias gr="git restore --staged"



autoload -Uz compinit
compinit
# End of lines added by compinstall


