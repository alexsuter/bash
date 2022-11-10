#!/bin/bash

# git
alias g='cd ~/git'
alias push='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias del='git push -d origin $(git rev-parse --abbrev-ref HEAD)'
alias repush='del && push'
alias fpush='git push -u origin $(git rev-parse --abbrev-ref HEAD) --force'
alias clean='git gc --prune=now && git remote prune origin && git prune'
alias wip='git add . && git commit -m "🐋" && push'

alias res='git reset --hard origin/master'
alias onlymaster='git branch | grep -v "master" | xargs git branch -D'
alias ggo='git checkout master && git pull && onlymaster && clean'
alias squash='git reset $(git merge-base master $(git rev-parse --abbrev-ref HEAD))'
alias squash10='git reset $(git merge-base release/10.0 $(git rev-parse --abbrev-ref HEAD))'
alias squash8='git reset $(git merge-base release/8.0 $(git rev-parse --abbrev-ref HEAD))'

# docker
alias d='docker'
alias drmc='docker rm -f $(docker ps -a -q)'
alias drmi='docker rmi -f $(docker images -q)'
alias dprune='docker system prune --all --force --volumes'

# misc
alias update='sudo apt update && sudo apt dist-upgrade && sudo apt autoremove'
alias bat='batcat'
alias java8='JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/'
alias java11='JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/'
alias weather='curl wttr.in/Zug+Switzerland'
alias it='cd ~/git/core/development/integration-test/'
