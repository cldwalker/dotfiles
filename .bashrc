# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

shopt -s histappend
export PS1='\[\033[01;34m\]\W \[\033[01;32m\]$(__git_ps1 "(%s)")$ \[\033[00m\]'
# export PS1='\[\033[01;34m\]\W $ \[\033[00m\]'

if [ -d ~/.rip  ]; then
  export RIPREPO=/Users/bozo/code/fork/rip
  if [ $USER == 'gabrielhorner' ]; then
    export RIPREPO=/Users/gabrielhorner/code/repo/rip
  fi;

  export PATH=$RIPREPO/bin:$PATH
  export MANPATH=$MANPATH:$RIPREPO/man
  export RUBYLIB=$RIPREPO/lib:$RUBYLIB
  export RIPDIR=$HOME/.rip
  export RIPHELPERS=1
  if [ $BASH != '/bin/sh' ]; then
    eval `rip-config`
  fi;
fi;

source ~/.sh/all
source ~/.bash/functions
source ~/.bash/completions
