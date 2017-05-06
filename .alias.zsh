# Alias shortcuts
alias ae="$EDITOR ~/.alias.zsh && source ~/.alias.zsh"

# Docker
alias dme='eval $(docker-machine env)'
alias dcu='docker-compose run'
alias dcus='docker-compose run --service-ports'

alias ng='ngrok http -subdomain=harrison'

# GNU/Utils
alias lsa='ls -a'
alias c='clear'

# Git
alias gs='git status'
alias ga='git add -p'
alias gc='git commit'
alias gca='git commit --amend'
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

alias hcsd='hc && tmux new-session -s hc'
