# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Variables
shopt -s histappend
export HISTSIZE=3000
export HISTFILESIZE=3000
export EDITOR=vim
export PS1='\[\033[01;34m\]\h \[\033[01;32m\]\W $(__git_ps1 "(%s)")$ \[\033[00m\]'
#export PS1='[\u@\W] '
export RI="--no-home --no-gems --no-site --format ansi -T"
export RIPDIR=/Users/bozo/.rip
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:/Users/bozo/bin:$RIPDIR/active/bin
export MANPATH=$MANPATH:/usr/local/git/man:/opt/local/share/man:/usr/local/man
export PGDATA=/opt/local/var/db/postgres
export LC_CTYPE=en_US.UTF-8
export RUBYLIB="$RUBYLIB:$RIPDIR/active/lib"

# shell options
set meta-flag on
set input-meta on
set output-meta on
set convert-meta off
#for mac osx
bind "set completion-ignore-case on"

source ~/.bash/aliases
source ~/.bash/functions
source ~/.bash/completions
if [ -f ~/.bash/private ]; then
  source ~/.bash/private
fi
