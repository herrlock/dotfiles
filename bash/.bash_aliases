
## simple aliases

# light-confirmations before "bigger" removals
alias rm="rm -I"

# aliases for ls
alias ll="ls -lAh"
alias ld="ll -d"
alias lg='ll --group-directories-first'

# too lazy...
alias c='clear'
# common typos
alias clera=clear
alias celar=clear

# always grep with colour
alias grep='grep --color=auto'

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
	set -x &&
	test "$1" &&
	ssh "$1" exit &&
	set +x &&
	printf '\033]0;%s htop\a' "$1" &&
	exec ssh -t "$1" htop
}

# include .bash_aliases_local if it exists
if [ -f ~/.bash_aliases_local ]; then
	. ~/.bash_aliases_local
fi
