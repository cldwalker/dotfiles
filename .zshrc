# trying out oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
plugins=(git emoji docker lein aws)
export ZSH_THEME="clean"
source $ZSH/oh-my-zsh.sh
COMPLETION_WAITING_DOTS="true"
# See https://github.com/ohmyzsh/ohmyzsh/blob/master/templates/zshrc.zsh-template for
# vars I can set

source ~/.sh/all

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
if which jenv > /dev/null; then eval "$(jenv init - zsh)"; fi

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
source ~/.zsh/completions.zsh

# COMPLETION
# get option description in completion
zstyle ':completion:*' verbose yes

export PATH="$HOME/.yarn/bin:$PATH"

# Ctrl-R and Ctrl-T goodness. Ctrl-R didn't work with zsh plugin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
