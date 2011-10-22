# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

shopt -s histappend
export PS1='\[\033[01;34m\]\W \[\033[01;32m\]$(__git_ps1 "(%s)")$ \[\033[00m\]'
# export PS1='\[\033[01;34m\]\W $ \[\033[00m\]'

source ~/.sh/all
source ~/.bash/functions
source ~/.bash/completions
