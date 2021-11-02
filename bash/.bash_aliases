
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
# run htop at the given host
function sshtop() {
	test "$1" \
	&& ssh "$1" exit \
	&& printf '\033]0;%s htop\a' "$1" \
	&& exec ssh -t "$1" htop
}

# include .bash_aliases_local if it exists
if [ -f ~/.bash_aliases_local ]; then
	. ~/.bash_aliases_local
fi

