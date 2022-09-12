#!/bin/bash

# Author : soultopia
# E-mail : yhng.zhu@gmail.com
# Detail : for bash shell

export PS1="\[\e[34m\]\w\n\[\e[m\]{\[\e[35m\]\u\[\e[m\]@\[\e[33m\]\H\[\e[m\]-\[\e[36m\]\A\[\e[m\]} \$ \[\e[m\]"

alias cd='mycd(){ cd $1&&ll --color -F; };mycd'
alias cdp='cd /common/$(whoami)'
alias sb='source ~/.bashrc'

alias v='vim'
alias g='gvim'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias wprun='docker run --name wp-soultopia --net="host" -v /common/zhuyuheng/github/LAMP/www/html:/var/www/html:rw -d soultopia/wp-soultopia:v3'
alias dst='mywp() { docker stop $(docker ps -a | grep -P -o "^\w+(?=\s*${1})"); }; mywp'
alias drs='mywp() { docker restart $(docker ps -a | grep -P -o "^\w+(?=\s*${1})"); }; mywp'
alias dex='mywp() { docker exec -it $(docker ps -a | grep -P -o "^\w+(?=\s*${1})") /bin/bash; }; mywp'
alias drm='mywp() { docker rm $(docker ps -a | grep -P -o "^\w+(?=\s*${1})"); }; mywp'

alias tree='tree --dirsfirst --charset=ascii'

alias vclean='
rm -rf ~/.vim/tmp/backup/* && \
rm -rf ~/.vim/tmp/swap/*   && \
rm -rf ~/.vim/tmp/undo/*   && \
echo "
*****************************************************
**** Clean vim swap, undo and backup file done ~ ****
*****************************************************
"'

export TERM=xterm-256color

