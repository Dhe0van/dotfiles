# Package manager
function pacsyu; sudo pacman -Syu; end
function pacs; sudo pacman -S $argv; end
function pacu; sudo pacman -U $argv; end
function pacr; sudo pacman -R $argv; end
function pacorphan; sudo pacman -Rs (pacman -Qqtd); end

# Directory
function uri; cd ~/Code/URI; end
function docs; cd ~/Code/Docs; end

# Edit
function zshrc; vim ~/.zshrc; end
function i3; vim ~/.config/i3/config; end
function alacritty; vim ~/.config/alacritty/alacritty.yml; end
function picom; sudo vim /etc/xdg/picom.conf; end
function vimrc; vim ~/.vimrc; end
function polybar; vim ~/.config/polybar/config; end
function fishconf; vim ~/.config/fish/config.fish; end
function savefish; source ~/.config/fish/config.fish; end

# Hardware
function cpuspd; watch -n.5 \"cat /proc/cpuinfo | grep -i mhz\"; end

# More default command
function l; ls -l --color=auto $argv; end
function la; ls -ls --color=auto $argv; end
function v; vim $argv; end
function c; clear; end
function x; exit; end
function free; free -h $argv; end

# Git
function g; git $argv; end
function ga; git add $argv; end
function gb; git branch $argv; end
function gl; git log $argv; end
function glp; git log -p $argv; end
function glg; git log --color --oneline --graph $argv; end
function gcm; git commit -m $argv; end
function gce; git commit --allow-empty-message -m ''; end
function gca; git commit -am $argv; end
function gcl; git clone $argv; end
function gp; git push $argv; end
function gs; git switch $argv; end
function gst; git status $argv; end
function gr; git restore --staged $argv; end

# Random command
function 8; ping 8.8.8.8 $argv; end
function net; systemctl status NetworkManager $argv; end
