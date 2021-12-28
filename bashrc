
export PS1="\[\e[34m\]\w\n\[\e[m\]{\[\e[35m\]\u\[\e[m\]@\[\e[33m\]\H\[\e[m\]-\[\e[36m\]\A\[\e[m\]} \$ \[\e[m\]"

alias cd='mycd(){ cd $1&&ll --color -F; };mycd'
alias sb='source ~/.bashrc'

alias v='vim'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias cdp='cd /common/$(whoami)'


export TERM=xterm-256color

