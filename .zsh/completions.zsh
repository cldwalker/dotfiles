## Top-level zstyles
# get option description in completion
zstyle ':completion:*' verbose yes

### tmux-pane ###
# from http://blog.plenz.com/2012-01/zsh-complete-words-from-tmux-pane.html
_tmux_pane_words() {
  local expl
  local -a w
  if [[ -z "$TMUX_PANE" ]]; then
    _message "not running inside tmux!"
    return 1
  fi
  w=( ${(u)=$(tmux capture-pane \; show-buffer \; delete-buffer)} )
  _wanted values expl 'words from current tmux pane' compadd -a w
}
zle -C tmux-pane-words-prefix   complete-word _generic
zle -C tmux-pane-words-anywhere complete-word _generic
bindkey '^Xt' tmux-pane-words-prefix
bindkey '^X^X' tmux-pane-words-anywhere

zstyle ':completion:tmux-pane-words-(prefix|anywhere):*' completer _tmux_pane_words
zstyle ':completion:tmux-pane-words-(prefix|anywhere):*' ignore-line current
zstyle ':completion:tmux-pane-words-anywhere:*' matcher-list 'b:=* m:{A-Za-z}={a-zA-Z}'

### fzf-tab ###
# Some from https://github.com/Aloxaf/fzf-tab#configure
# set descriptions format to enable group support
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# switch group using `,` and `.`
zstyle ':fzf-tab:*' switch-group ',' '.'
# Disable default prefix for tab groups, explained in https://github.com/Aloxaf/fzf-tab/pull/183#issuecomment-787080931
zstyle ':fzf-tab:*' prefix ''
# Sweet tab menu preview of directories a la midnight commander
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls $realpath'
# Display usage of bb task in preview
zstyle ':fzf-tab:complete:bbg:*' fzf-preview 'BABASHKA_EDN=~/code/repo/bb-clis/bb.edn bb help $word'

### bb completions ###

# Only for bb tasks
_bb() {
    local matches=(`bb tasks |tail -n +3 |cut -f1 -d ' '`)
    compadd -a matches
    _files # autocomplete filenames as well
    _gnu_generic #complete options
    # TODO: Move tasks to _arguments
    # _arguments '1:tasks:_bb_tasks'
}
compdef _bb bb

_bbg_tasks() {
    local matches=(`BABASHKA_EDN=~/code/repo/bb-clis/bb.edn bb tasks |tail -n +3 |cut -f1 -d ' '`)
    compadd -a matches
    # Disable file completion to not pollute fzf-preview and until I can put in
    # it's own tab group
    # _files
}
compdef _bbg_tasks bbg

### Misc completions ###
# These are for aws cli v2
compdef bb-aws=aws
# Only autocompletes as subcommand and not in desired: aws-vault exec foo -- aws [TAB]
compdef aws-vault=aws
