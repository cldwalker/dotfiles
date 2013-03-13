autoload edit-command-line
zle -N edit-command-line
bindkey '^X^e' edit-command-line
# like bash
bindkey '^[.' insert-last-word

# incremental search by globs i.e. ENV*PATH
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward

# from http://chneukirchen.org/blog/archive/2013/03/10-fresh-zsh-tricks-you-may-not-know.html
autoload -Uz copy-earlier-word
zle -N copy-earlier-word
bindkey "^[m" copy-earlier-word
