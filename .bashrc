# Variables
	shopt -s histappend
	export HISTSIZE=3000
	export EDITOR=vim
	export PS1='\[\033[01;34m\]\h \[\033[01;32m\]\W \$ \[\033[00m\]'
	export RI="--format ansi -T"
	#export PS1='[\u@\W] '
# Source global definitions
	if [ -f /etc/bashrc ]; then
		. /etc/bashrc
	fi
#functions
	cl () 
	{ 
	    cd $1;
	    shift;
	    ls $a
	}

source ~/.bashalias
source ~/.my_bashrc
