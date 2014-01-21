Description
===========

  These are the dot files for apps I use every day.
Among these apps are:

* bash: aliases, functions, completions
* vim: config and plugins
* vimperator: firefox plugin to make it vim-like, includes config and plugins
* tabtab: ruby gem for ruby-based completion
* lightning: my own ruby gem for ruby-based completion
* screen: basic config to have visible tabs
* git: just my gitignore
* other: .bash/completion/ contains ruby scripts with more completion goodies
* irb: irb files are in my irbfiles repository

Install
=======

Simply run `ruby install.rb` in this directory to symlink these files to
your home directory.

For light table, you will need to additionally:
`ln -s ~/.light_table/ ~/Library/Application\ Support/LightTable/settings`
