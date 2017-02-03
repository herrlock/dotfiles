
# set timezone
export TZ=GST-1GDT

# load global aliases from .bash_aliases if the file exists
if [ -f ~/.bash_aliases ]
then
	. ~/.bash_aliases
fi

# load shell-colors
if [ -f ~/.bash_colors ]
then
	. ~/.bash_colors
fi

# execute .bash_hello if it exists
if [ -f ~/.bash_hello ]
then
	~/.bash_hello
fi

# define function pause
# reads one character and continues
pause() {
	read -n1 -r -p "Press any key to continue..."
}
