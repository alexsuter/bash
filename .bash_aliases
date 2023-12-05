#!/bin/bash

# git
alias g='cd ~/git'
alias push='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias del='git push -d origin $(git rev-parse --abbrev-ref HEAD)'
alias repush='del && push'
alias fpush='git push -u origin $(git rev-parse --abbrev-ref HEAD) --force'
alias clean='git gc --prune=now && git remote prune origin && git prune'
alias wip='git add . && git commit -m "🐵🐶🐻" && push'
alias shit='git add . && git commit -m "🐂💩" && push'
alias p='git cherry-pick '
alias start='git checkout -b '

alias res='git reset --hard origin/master'
alias onlymaster='git branch | grep -v "master" | xargs git branch -D'
alias ggo='git checkout master && git pull && onlymaster && clean'
alias squash='git reset $(git merge-base master $(git rev-parse --abbrev-ref HEAD))'
alias squash112='git reset $(git merge-base release/11.2 $(git rev-parse --abbrev-ref HEAD))'
alias squash10='git reset $(git merge-base release/10.0 $(git rev-parse --abbrev-ref HEAD))'
alias squash8='git reset $(git merge-base release/8.0 $(git rev-parse --abbrev-ref HEAD))'
alias newwork='git clean -f -d && git checkout . && git checkout master && git pull && git checkout -b'

# gh cli
alias c='gh pr checks'
alias cst='gh pr edit --add-reviewer ivy-cst'
alias lli='gh pr edit --add-reviewer ivy-lli'
alias jla='gh pr edit --add-reviewer jackra1n'
alias rwei='gh pr edit --add-reviewer weissreto'
alias lmu='gh pr edit --add-reviewer ivy-lmu'
alias rew='gh pr edit --add-reviewer ivy-rew'
alias tgr='gh pr edit --add-reviewer ivy-tgr'
alias lgi='gh pr edit --add-reviewer ivy-lgi'
alias cw='gh pr checks --watch'
alias pr='gh pr create --fill'
alias draft='gh pr create --fill --draft'
alias pr10='gh pr create -B release/10.0 --fill'
alias pr112='gh pr create -B release/11.2 --fill'
alias w='gh pr view -w'

# docker
alias d='docker'
alias drmc='docker rm -f $(docker ps -a -q)'
alias drmi='docker rmi -f $(docker images -q)'
alias dprune='docker system prune --all --force --volumes'
alias up="docker compose up"
alias down="docker compose down"
alias docker-compose="docker compose"

# misc
alias .='code .'
alias update='sudo apt update && sudo apt dist-upgrade && sudo apt autoremove'
alias bat='batcat'
alias java8='JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/'
alias java11='JAVA_HOME=/usr/lib/jvm/temurin-11-jdk-amd64/'
alias java17='JAVA_HOME=/usr/lib/jvm/temurin-17-jdk-amd64/'
alias java21='JAVA_HOME=/usr/lib/jvm/temurin-21-jdk-amd64/'
alias weather='curl wttr.in/Zug+Switzerland'
alias it='cd ~/git/core/development/integration-test/'
alias mvn='/var/opt/maven-3.9.4/bin/mvn'
