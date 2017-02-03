
alias ll="ls -lAh"
alias lg='ll --group-directories-first'

alias c='clear'
alias grep='grep --color=auto'

alias g=gradle

function concat { local IFS="$1"; shift; echo "$*"; }
