# Alias shortcuts
alias ae="$EDITOR ~/.alias.zsh && source ~/.alias.zsh"

# Docker
alias dme='eval $(docker-machine env)'
alias dcu='docker-compose run'
alias dcus='docker-compose run --service-ports'

# Ngrok
alias ng='ngrok http -subdomain=harrison'

# Tmux
alias tns='tmux new-session -s'
alias tls='tmux ls'

# GNU/Utils
alias lsa='ls -a'
alias c='clear'
alias pn='ping -c 10 google.com'
alias timestamp='date --rfc-3339="date"'

# Git
alias gs='git status'
alias gan='git add'
alias ga='git add -p'
alias gc='git commit'
alias gca='git commit --amend'
alias gd='git diff'
alias gds='git diff --staged'
alias gp='git push'
alias gpf='git push -f'
alias gcp='gc && gp'
alias gl='git log'
alias gpu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'

# Navigation
alias code='cd ~/code'
alias hc='code && cd hackclub'
alias hca='hc && cd api'
alias hcf='hc && cd frontend'
alias hcw='hc && cd website'
alias dfs='code && cd dotfiles'

# Ubuntu
alias net='nmtui-connect'

source ~/ascii/alias.zsh
