# from http://chneukirchen.org/blog/archive/2012/02/10-new-zsh-tricks-you-may-not-know.html
zman() {
  PAGER="less -g -s '+/^       "$1"'" man zshall
}

# gll <WORD> [extract git log args] - invoke git log with search enabled in pager
# Only use for seeing full commits as turning off -u leads to issues with LESS
git-log-less() {
  local pat="+/$1" # Handles quoting for " and >
  git -c core.pager="less ${(q)pat}" log -G "$1" -u "${@:2}"
}
alias gll=git-log-less

# clj-ns-aliases <NS> - Prints count of different aliases for a clj ns
clj-ns-aliases() {
  grep -rhE "\[$1 +:as +[a-zA-Z._?!*+<>-]+" --include='*.clj' --include='*.cljc' . \
  | sed -E 's/.*:as +([a-zA-Z._?!*+<>-]+).*/\1/' \
  | sort | uniq -c | sort -rn
}