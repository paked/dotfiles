# Alias shortcuts
alias ae="$EDITOR ~/.alias.zsh && source ~/.alias.zsh"
alias are="source ~/.alias.zsh"

# Docker
alias dme='eval $(docker-machine env)'
alias dcr='docker-compose run'
alias dcrs='docker-compose run --service-ports'

# Ngrok
alias ng='ngrok http -subdomain=harrison'

# Tmux
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

# GNU/Utils
alias lsa='ls -al'
alias c='clear'
alias pn='ping -c 10 google.com'
alias timestamp='date --rfc-3339="date"'

# Git
alias g='git status'
alias gs='git status'
alias gan='git add'
alias ga='git add -p'
alias gc='git commit'
alias gca='git commit --amend'
alias gd='git diff'
alias gds='git diff --staged'
alias gp='git push'
alias gpl='git pull'
alias gplom='git pull origin master'
alias gpf='git push -f'
alias gcp='gc && gp'
alias gcpu='gc && gpu'
alias gl='git log'
alias gpu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gcob='git checkout -b'
alias gco='git checkout'
alias gcom='git checkout master'
alias grh='git reset HEAD'
alias gra='git remote add'
alias gb='git branch'

# Navigation
alias code='cd ~/code'
alias ascii='cd ~/ascii'
alias hc='cd ~/code/hackclub'
alias hca='cd ~/code/hackclub/monolith/api'
alias hcf='cd ~/code/hackclub/monolith/frontend'
alias hcw='hc && cd website'
alias hcm='cd ~/code/hackclub/monolith'
alias dfs='code && cd dotfiles'

# Ubuntu
alias net='nmtui-connect'

# Servers
alias sschmidt='ssh schmidt.harrison.tech'
alias vps='sschmidt'

# Clipboard
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# (Sorry, this is private :D)
source ~/ascii/alias.zsh

# Configure monitors
export XRESOURCES_DEFAULT=~/.Xresources
export XRESOURCES_WORK=~/.Xresources.work
alias xwork="xrdb -merge $XRESOURCES_WORK && ~/.screen_layouts/work.sh"
alias xdefault="xrdb -merge $XRESOURCES_DEFAULT && ~/.screen_layouts/default.sh"

if [ -f /ascii/alias.zsh ]; then
    # (Sorry, this is private :D)
    source ~/ascii/alias.zsh
    alias streams="cd ~/ascii/streams"
fi

alias hrm='heroku run rails c --app api-hackclub'
alias api-hackclub='heroku run --app api-hackclub'
