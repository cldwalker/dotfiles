# Count regex matches across the repo, most frequent first.
# Usage: grep-counts PATTERN [PATH...]
grep-counts() {
  git grep -ohE "$1" -- "${@:2}" | sort | uniq -c | sort -rn
}

# git-log-less <WORD> [extract git log args] - invoke git log with search enabled in pager
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

# cljs-ns-aliases <NS> - Prints count of different aliases for a cljs ns
cljs-ns-aliases() {
  grep -rhE "\[$1 +:as +[a-zA-Z._?!*+<>-]+" --include='*.cljs' --include='*.cljc' . \
  | sed -E 's/.*:as +([a-zA-Z._?!*+<>-]+).*/\1/' \
  | sort | uniq -c | sort -rn
}

# Grep cljs code and shares count by top-level src/cljs/* dir
exchange-grep() {
  git grep -l "$@" src/cljs |
    awk -F/ '{print $1"/"$2"/"$3}' |
    sort |
    uniq -c |
    awk '{printf "* %s - %d\n", $2, $1}'
}

logseq-bookmark-search() {
  logseq search block -c "$@" -g personal
  cd ~/code/priv/public-notes && git grep "$@"; cd -
}
alias l-bookmark-search=logseq-bookmark-search

# Create l-<name> aliases for every logseq-<name> executable found in $PATH
logseq-aliases() {
  local name
  for name in ${^path}/logseq-*(N:t); do
    alias "l-${name#logseq-}=$name"
  done
}
logseq-aliases
