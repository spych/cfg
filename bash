# Default Aliases -------------------------------------------------------------------------
alias i="sudo nala install -y"
alias r="sudo apt --purge remove -y"
alias ar="sudo apt autoremove -y && sudo apt autoclean"
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
# Install
alias di="sudo dpkg -i"
alias dr="sudo dpkg -ry"
alias ai="sudo apt install -y"
alias ni="sudo nala install -y"
 
# Update & Upgrade 
alias ad="sudo apt update -y"
alias ag="sudo apt upgrade -y"
alias agd="sudo apt upgrade -y && sudo apt update -y"

alias nd="sudo nala update"
alias ng="sudo nala upgrade -y"
alias ngd="sudo nala upgrade -y && sudo nala update"
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
alias e-rc="nvim ~/.bashrc"
alias e-al="nvim ~/.bash_aliases"
alias e-nv="nvim ~/.config/nvim/init.vim"
#------------------------------------------------------------------------------------------



# System Aliases --------------------------------------------------------------------------
alias sl="systemctl suspend && exit"
alias sd="systemctl poweroff"
alias rb="systemctl reboot"
alias lo="pkill -KILL -u $USER"
#------------------------------------------------------------------------------------------


# Prompt Aliases---------------------------------------------------------------------------
if [ $USER == "root" ]; then
    PS1="\n \[\e[1;37m\]╭(\[\e[0m\]\[\e[1;31m\]$USER\[\e[0m\]\[\e[1;37m\]) \[\e[0m\]\n \[\e[1;37m\]╰\[\e[0m\]\[\e[1;37m\](\[\e[0m\]\[\e[1;31m\]\w\[\e[0m\]\[\e[1;37m\])\[\e[0m\]\n\n ❯ "
else
    PS1="\n \[\e[1;37m\]╭(\[\e[0m\]\[\e[1;32m\] \t \d \[\e[0m\]\[\e[1;37m\]) \[\e[0m\]\n \[\e[1;37m\]╰\[\e[0m\]\[\e[1;37m\](\[\e[0m\]\[\e[1;32m\] \w \[\e[0m\]\[\e[1;37m\])\[\e[0m\]\n\n ❯ "
fi
#------------------------------------------------------------------------------------------
