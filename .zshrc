# trying out oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export DISABLE_AUTO_UPDATE="true"
plugins=(git brew gem git-flow redis-cli rvm)
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

# KEYS
autoload edit-command-line
zle -N edit-command-line
bindkey '^X^e' edit-command-line
# like bash
bindkey '^[.' insert-last-word

# COMPLETION
# get option description in completion
zstyle ':completion:*' verbose yes
