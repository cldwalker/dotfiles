autoload edit-command-line
zle -N edit-command-line
bindkey '^X^e' edit-command-line
# like bash
bindkey '^[.' insert-last-word

# incremental search by globs i.e. ENV*PATH
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward
