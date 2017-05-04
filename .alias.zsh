# Alias shortcuts
alias ae="$EDITOR ~/.alias.zsh && source ~/.alias.zsh"

# Docker
alias dme='eval $(docker-machine env)'
alias ng='ngrok http -subdomain=harrison'
alias dcu='docker-compose run'
alias dcus='docker-compose run --service-ports'

# GNU/Utils
alias lsa='ls -a'

# Git
alias gs='git status'
alias ga='git add -p'
alias gc='git commit'
alias gp='git push'
alias gpu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'

# Navigation
alias code='cd ~/code'
alias hc='code && cd hackclub'
alias hca='hc && cd api'
alias hcf='hc && cd frontend'
alias hcw='hc && cd website'
alias dfs='code && cd dotfiles'