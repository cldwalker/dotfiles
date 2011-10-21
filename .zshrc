source ~/.sh/all

#for lightning - http://github.com/cldwalker/lightning
if [ -f ~/.lightning/functions.sh ] && [ "$SHELL" != '/bin/sh' ] ; then
  source ~/.lightning/functions.sh
fi

# trying out oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export DISABLE_AUTO_UPDATE="true"
plugins=(git brew gem git-flow redis-cli rvm)
export ZSH_THEME="random"
source $ZSH/oh-my-zsh.sh
