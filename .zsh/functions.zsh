# from http://chneukirchen.org/blog/archive/2012/02/10-new-zsh-tricks-you-may-not-know.html
zman() {
  PAGER="less -g -s '+/^       "$1"'" man zshall
}
