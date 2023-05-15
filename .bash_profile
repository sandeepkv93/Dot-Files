alias ll='ls -alF'
alias la='ls -A'
alias l='ls -Fhg'
alias ..='cd ..'
alias cls='clear'
alias clr='reset'
alias x='exit'
alias bashrc='nvim ~/.bash_profile'
alias v='nvim'
alias mkcd='function _mkcd(){ mkdir -p "$1" && cd "$1"; };_mkcd'
alias addpwdtopath='export PATH=$(pwd):$PATH'
alias s3vim='function _s3vim(){ url=$(echo $1 | sed "s/s3:\/\///"); aws s3 cp "s3://$url" /tmp/s3file && nvim /tmp/s3file; rm /tmp/s3file; };_s3vim'

function s3cp() {
    s3_bucket_url=$1
    s3_copied_file_name="`echo $s3_bucket_url | cut -d "/" -f 6 | cut -d "." -f 1`"_"`echo $s3_bucket_url | cut -d "/" -f 7`"_"`echo $s3_bucket_url | cut -d "/" -f 9`".txt
    echo "Dowloading to $s3_copied_file_name"
    aws s3 cp $s3_bucket_url $s3_copied_file_name
}

# Tmux related aliases
alias ta='tmux attach'
alias tas='function _tas(){ tmux attach -t $1; };_tas'
alias tls='tmux list-sessions'
alias tns='function _tns(){ if [ -z "$1" ]; then tmux new-session -s "session_$RANDOM"; else tmux new-session -s "$1"; fi; };_tns'
alias tds='function _tds(){ tmux kill-session -t $1; };_tds'
