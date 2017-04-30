export DMNG_PORT=3000

# Docker
alias dme='eval $(docker-machine env)'
alias dmng='ngrok http -subdomain=harrison $(docker-machine ip):$DMNG_PORT'
alias dcu='docker-compose run'
alias dcus='docker-compose run --service-ports'

# GNU/Utils
alias lsa='ls -a'

# Git
alias gs='git status'
alias ga='git add -p'
alias gc='git commit'
alias gp='git push'
