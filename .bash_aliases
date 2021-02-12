#!/bin/bash

# git
alias g='cd ~/git'
alias gpush='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gdelete='git push -d origin $(git rev-parse --abbrev-ref HEAD)'
alias grepush='gdelete && gpush'
alias gclean='git gc --prune=now && git remote prune origin && git prune'
alias greset='git reset --hard origin/master'
alias gonlymaster='git branch | grep -v "master" | xargs git branch -D'
alias ggo='git checkout master && git pull && gonlymaster && gclean'

alias wip='git add . && git commit -m "🐋" && gpush'
alias squash='git reset $(git merge-base master $(git rev-parse --abbrev-ref HEAD))'
alias squash8='git reset $(git merge-base release/8.0 $(git rev-parse --abbrev-ref HEAD))'

# docker
alias d='docker'
alias drmc='docker rm -f $(docker ps -a -q)'
alias drmi='docker rmi -f $(docker images -q)'
alias dprune='docker system prune --all --force --volumes'

# misc
alias update='sudo apt update && sudo apt dist-upgrade && sudo apt autoremove'
alias bat='batcat'
alias java8='JAVA_HOME=/usr/lib/jvm/java-8-oracle/'
alias weather='curl wttr.in/Zug+Switzerland'
alias it='cd ~/git/ivy-core/development/integration-test/'
