
## simple aliases

alias rm="rm -I"

alias ll="ls -lAh"
alias ld="ll -d"
alias lg='ll --group-directories-first'

alias c='clear'
alias grep='grep --color=auto'

alias g=gradle

## functions

# concatenate the given values
function concat {
	local IFS="$1"
	shift
	echo "$*"
}
# set title of terminal
function title {
	echo -e '\033]2;'$*'\007'
}

# include .bash_aliases_local if it exists
if [ -f ~/.bash_aliases_local ]; then
	. ~/.bash_aliases_local
fi

