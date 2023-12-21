# Defaults --------------------------------------------------------------------------------
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias vi='vim'
alias rf="rm -rf"
alias ni="touch"
#------------------------------------------------------------------------------------------


# APT -------------------------------------------------------------------------------------
alias i="sudo nala install -y"
alias r="sudo apt --purge remove -y"
alias rc="sudo apt autoremove -y && sudo apt autoclean"
alias up="sudo nala update && sudo nala upgrade"
#------------------------------------------------------------------------------------------

# DNF -------------------------------------------------------------------------------------
alias i="sudo dnf install -y"
alias r="sudo dnf remove -y"
alias rc="sudo dnf clean all"
#------------------------------------------------------------------------------------------

# Default Aliases -------------------------------------------------------------------------
alias rr="source ~/.bash_aliases && clear"
alias c="clear"
alias q="exit"
alias n="nvim"
alias nv="nvim"
alias v="vim"
alias h="history"
alias d="date"
alias t="time"
alias cl="clear;ls"
#------------------------------------------------------------------------------------------



# Package Control--------------------------------------------------------------------------
# APT    
alias a-i="sudo apt install"
alias a-up="sudo apt update && sudo apt upgrade"
alias n-i="sudo nala install"
alias n-up="sudo nala update && sudo nala upgrade"
alias a-li="apt list --installed"
alias n-li="nala list installed"
alias a-sw="apt show"
alias n-sw="nala show"
alias a-fu="sudo apt full-upgrade"
alias a-a-repo="sudo add-apt-repository"
alias a-r-repo="sudo add-apt-repository --remove"



# DNF
alias d-i="sudo dnf install"
alias d-up="sudo dnf update && sudo dnf upgrade"
alias d-r="sudo dnf remove"
alias n-li="dnf list installed"
alias d-sw="apt info"
alias d-e-repo="sudo dnf config-manager --set-enabled"
alias d-d-repo="sudo dnf config-manager --set-disable"
  

# DPKG 
alias d--i="sudo dpkg -i"
alias d--r="sudo dpkg -r"
alias d--li="dpkg -l"
alias d--sw="dpkg -s"

# RPM  
alias r--i="sudo rpm -i"
alias r--u="sudo rpm -U"
alias r--r="sudo rpm -e"
alias r--li="rpm -qa"
alias r--sw="rpm -qi"
#------------------------------------------------------------------------------------------



# Navigation Control ----------------------------------------------------------------------
alias home="cd ~"
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias dn="cd ~/Downloads"
alias dc="cd ~/Documents"
alias pc="cd ~/Pictures"
alias dk="cd ~/Desktop"
alias cr='function _compile_run() { gcc -o "run" "$1" && ./"run"; }; _compile_run'
alias cpr='function _compile_run() { g++ -o "run" "$1" && ./"run"; }; _compile_run'
#------------------------------------------------------------------------------------------



# Edit Files ------------------------------------------------------------------------------
alias e-rc="nvim ~/.bashrc"
alias e-al="nvim ~/.bash_aliases"
alias e-nv="nvim ~/.config/nvim/init.vim"
alias e-tx="nvim ~/.tmux.conf"
alias e-wm="nvim ~/.config/awesome/rc.lua"
alias e-al-t="nvim ~/.config/alacritty/alacritty.yml"
alias e-pm="nvim ~/.config/picom/picom.conf"
alias e-pb="nvim ~/.config/polybar/config"
alias s-n-w="nitrogen --set-zoom-fill"
alias g-c-cfg="git clone https://github.com/spych/cfg.git"

#------------------------------------------------------------------------------------------



# System Aliases --------------------------------------------------------------------------
alias sl="systemctl suspend && exit"
alias sd="systemctl poweroff"
alias rb="systemctl reboot"
alias lo="pkill -KILL -u $USER"
#------------------------------------------------------------------------------------------


# Prompt Aliases---------------------------------------------------------------------------
if [ $USER == "root" ]; then
    PS1="\n \[\e[1;37m\]╭( \[\e[0m\]\[\e[1;31m\]$USER\[\e[0m\]\[\e[1;37m\] ) \[\e[0m\]\n \[\e[1;37m\]╰\[\e[0m\]\[\e[1;37m\]( \[\e[0m\]\[\e[1;31m\]\w\[\e[0m\]\[\e[1;37m\] )\[\e[0m\]\n\n ❯ "
else
    PS1="\n \[\e[1;37m\]╭(\[\e[0m\]\[\e[1;32m\] \t \d \[\e[0m\]\[\e[1;37m\]) \[\e[0m\]\n \[\e[1;37m\]╰\[\e[0m\]\[\e[1;37m\](\[\e[0m\]\[\e[1;32m\] \w \[\e[0m\]\[\e[1;37m\])\[\e[0m\]\n\n ❯ "
fi
#------------------------------------------------------------------------------------------
