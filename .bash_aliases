# basic quality of life
alias c='clear'
alias la='ls -a'
alias pn='ping -c 10 google.com'
alias hs='python3 -m http.server 8080'
alias vim='nvim'

# dotfiles related
alias are='source ~/.bash_aliases'
alias e='vim ~/.bash_aliases && are'
alias v='vim'

# git
alias g='git status'
alias gl='git log'
alias gc='git commit'
alias gca='git commit --amend'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gp='git push'
alias gpu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gd='git diff'
alias gds='git diff --staged'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcob='git checkout -b'
alias ga='git add -p'
alias gaa='git add --all'
alias grh='git reset HEAD'

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

# ruby
alias be='bundle exec'

# bash config
export GOPATH=~/dev/go

export PATH="$HOME/gems/bin:$PATH"
