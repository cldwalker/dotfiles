# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Variables
shopt -s histappend
export HISTSIZE=3000
export HISTFILESIZE=3000
export EDITOR=vim
export PS1='\[\033[01;34m\]\W \[\033[01;32m\]$(__git_ps1 "(%s)")$ \[\033[00m\]'
#export PS1='\[\033[01;34m\]\W $ \[\033[00m\]'
export RI="--no-home --no-gems --no-site --format ansi -T"
export PATH=/usr/local/bin:$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$HOME/bin
export MANPATH=$MANPATH:/opt/local/share/man:/usr/local/man
export PGDATA=/opt/local/var/db/postgres
export LC_CTYPE=en_US.UTF-8
export NO_RUBYGEMS=true
# only page if more than a screenful
export LESS=FRX
if [ -d ~/.rip ]; then
  export RIPREPO=/Users/bozo/code/fork/rip
  if [ $USER == 'gabrielhorner' ]; then
    export RIPREPO=/Users/gabrielhorner/code/repo/rip
  fi;

  export PATH=$RIPREPO/bin:$PATH
  export MANPATH=$MANPATH:$RIPREPO/man
  export RUBYLIB=$RIPREPO/lib:$RUBYLIB
  export RIPDIR=$HOME/.rip
  export RIPHELPERS=1
  eval `rip-config`
fi;

source ~/.bash/aliases
source ~/.bash/functions
source ~/.bash/completions
if [ -f ~/.bash/private ]; then
  source ~/.bash/private
fi

# rvm installer added line:
if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

