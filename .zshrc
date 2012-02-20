# trying out oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export DISABLE_AUTO_UPDATE="true"
plugins=(git brew gem redis-cli rvm)
export ZSH_THEME="clean"
source $ZSH/oh-my-zsh.sh

source ~/.sh/all

#for lightning - http://github.com/cldwalker/lightning
if [ -f ~/.lightning/functions.sh ] && [ "$SHELL" != '/bin/sh' ] ; then
  source ~/.lightning/functions.sh
fi

# OPTIONS
# pesky autocorrection
unsetopt correctall
unsetopt beep
unsetopt extendedglob

source ~/.zsh/keys.zsh
source ~/.zsh/functions.zsh

# COMPLETION
# get option description in completion
zstyle ':completion:*' verbose yes
