# basic quality of life
alias c='clear'
alias la='ls -a'
alias pn='ping -c 10 google.com'

# dotfiles related
alias are='source ~/.bash_aliases'
alias e='vim ~/.bash_aliases && are'
alias v='vim'

# git
alias g='git status'
alias gc='git commit'
alias gpl='git pull'
alias gp='git push'
alias gd='git diff'
alias gco='git checkout'

# tmux
alias ta='tmux a'
alias tls='tmux ls'

# A helper which creates a new tmux session with the name of your current directory.
# Usage:
# - `$ harrison@barry:~/code > tns`  creates a tmux session named 'code'
# - `$ harrison@barry:~/code > tns home-page` creates a tmux session named 'home-page'
function tns {
    if [ -z $1 ]
    then
        session_name=${PWD##*/}
    else
        session_name=$1
    fi

    echo $session_name

    tmux new-session -s $session_name
}

# bash config
export GOPATH=~/dev/go
