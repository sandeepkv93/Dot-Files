alias ll='ls -alF'
alias la='ls -A'
alias l='ls -Fhg'
alias reboot='sudo reboot'
alias off='sudo poweroff'
alias ..='cd ..'
alias cls='clear'
alias clr='reset'
alias x='exit'
alias bashrc='vim ~/.bashrc'
alias update1='sudo apt-get clean && sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y'
alias update='sudo apt clean && sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y'
alias f~='find . -name "*~" -delete'
alias short="PS1='\u:\W\$ '"

function mkcd() { mkdir -p "$1" && cd "$1"; }
export -f mkcd

export PS1="\u@\h:\w>\n\\$ \[$(tput sgr0)\]"
