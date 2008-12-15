# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Variables
shopt -s histappend
export HISTSIZE=3000
export EDITOR=vim
export PS1='\[\033[01;34m\]\h \[\033[01;32m\]\W \$ \[\033[00m\]'
#export PS1='[\u@\W] '
export RI="--format ansi -T"
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:/Users/bozo/bin:/usr/local/bin
export MANPATH=$MANPATH:/usr/local/git/man:/opt/local/share/man
export PGDATA=/opt/local/var/db/postgres
#enable UTF-8
export LC_CTYPE=en_US.UTF-8

# shell options
set meta-flag on
set input-meta on
set output-meta on
set convert-meta off

source ~/.bash/aliases
source ~/.bash/functions
source ~/.bash/completions
if [ -f ~/.bash/private ]; then
  source ~/.bash/private
fi
