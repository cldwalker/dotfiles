"#########################################################################
"# syntax/vo_base.vim: VimOutliner syntax highlighting
"# version 0.3.0
"#   Copyright (C) 2001,2003 by Steve Litt (slitt@troubleshooters.com)
"#
"#   This program is free software; you can redistribute it and/or modify
"#   it under the terms of the GNU General Public License as published by
"#   the Free Software Foundation; either version 2 of the License, or
"#   (at your option) any later version.
"#
"#   This program is distributed in the hope that it will be useful,
"#   but WITHOUT ANY WARRANTY; without even the implied warranty of
"#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
"#   GNU General Public License for more details.
"#
"#   You should have received a copy of the GNU General Public License
"#   along with this program; if not, write to the Free Software
"#   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
"#
"# Steve Litt, slitt@troubleshooters.com, http://www.troubleshooters.com
"#########################################################################

" HISTORY {{{1
"#########################################################################
"#  V0.1.0 Pre-alpha
"#      Set of outliner friendly settings
"# Steve Litt, 5/28/2001
"# End of version 0.1.0
"# 
"#  V0.1.1 Pre-alpha
"#      No change
"# 
"# Steve Litt, 5/28/2001
"# End of version 0.1.1
"# 
"#  V0.1.2 Pre-alpha
"# 	No Change
"# Steve Litt, 5/30/2001
"# End of version 0.1.2
"#  V0.1.3 Pre-alpha
"# 	No Change
"# Steve Litt, 5/30/2001
"# End of version 0.1.3
"#  V0.2.0 
"# 	Noel Henson adds code for outliner-friendly expand and
"# 	collapse, comma comma commands, color coding, hooks for a
"# 	spellchecker, sorting, and date insertion.
"# Noel Henson, 11/24/2002
"# End of version 0.2.0
"# END OF HISTORY
"# 
"#########################################################################

" Detailed Revision Log {{{1
"outliner.vim
"http://www.troubleshooters.com/projects/vimoutliner

"Internal RCS
"$Revision: 1.2 $"
"$Date: 2004/01/13 23:00:19 $
"$Log: vo_base.vim,v $
"Revision 1.2  2004/01/13 23:00:19  bozo
"first tuning
"
"Revision 2.41  2003/06/04 11:25:56  noel
"Moved the modification to the tags path outside the "if" statement in
"autocommands in ftplugin. Completely removed the line from syntax.
"
"Revision 2.40  2003/05/27 15:03:26  noel
"Added some documentation on the commands.
"
"Revision 2.39  2003/05/27 13:33:34  noel
"Added Vim style folds to both vo_base files to make them easier to read.
"Added a mode line to the end of each to activate the folds.
"Added a "Documentation" section that is mostly empty. This section will
"eventually be extracted automatically to form the online help via Vim's
"built-in help mechanisms.
"
"Revision 2.38  2003/05/23 16:02:42  noel
"Added tag file support for ~/.vimoutliner.
"
"Revision 2.37  2003/03/01 17:07:53  noel
"Removed the bold and underline glamour.
"It did not work with the level colorization nor properly cross line boundries.
"
"Revision 2.36  2003/02/12 15:40:26  noel
"Added some glamour. *word* make word bold and _word_ underlines a word.
"
"Revision 2.35  2003/02/09 14:54:10  noel
"Removed syntax highlighting for SpellErrors and BadWord,VOunderline,VObold. The plugins
"include their own.
"
"Revision 2.34  2003/02/08 21:59:25  noel
"Added SpellErrors and BadWord,VOunderline,VObold to the contains attributes of headings
"and bodytext. Now we're compatible with engspchk and vimspell.
"
"Revision 2.33  2003/02/08 21:34:46  noel
"Split out functions as Dillon originally showed.
"
"Revision 2.32  2003/01/30 01:47:41  noel
"modified switches sent to ispell to make it guess better.
"
"Revision 2.31  2003/01/28 22:31:37  noel
"Modified setlocal foldtext.... to set foldtext....
"
"Revision 2.30  2003/01/22 22:03:12  noel
"Fixed bodytext folding method.
"
"Revision 2.29  2003/01/21 00:18:50  noel
"Fixed a problem with runtimepath.
"Added a use_space_colon setting to that one can choose between bodytext
"marked with a : or with a space-:.
"
"Revision 2.28  2003/01/19 16:46:27  noel
"Removed some strange escape characters from a revision comment.
"
"Revision 2.27  2003/01/19 16:16:54  noel
"Added detection of the color scheme and an alternative set of colors
"for dark backgrounds. (well actually for non-"light" backgrounds) at
"Dillon Jones' request.
"Set the "current_syntax" at Dillon's request.
"Modified the exe lines in the source to remove the debugging style I was
"using.
"
"Revision 2.26  2003/01/16 00:56:51  noel
"Changed a bunch of set commands to setlocal commands at the
"suggestion of Jeffrey Hood. Thanks, Jeffrey!
"
"Revision 2.25  2003/01/13 17:05:08  noel
"Fixed a problem with the new regex that define headings.
"
"Revision 2.24  2003/01/12 19:08:32  noel
"Converted from _ to :
"
"Revision 2.23  2003/01/11 21:00:33  noel
"Added Matej requirement for personalization settings via
".vimoutlinerrc.
"Added Steve's style of bodytext that allows for wrapping and formatting
"without having the headings wrap as well. It is currently set for "_" as
"the bodytext marker.
"Added ,,b to set all bodytext to Steve's style.
"Added ,,B to set all bodytext to my style. This will also make it
"possible for Steve's style to be quickly reformatted for pretty
"printing with :ha.
"
"Revision 2.22  2003/01/11 00:35:32  noel
"Added support for .vimoutlinerrc in both ~ and ~/.vimoutliner.
"
"Revision 2.21  2002/12/12 13:38:58  noel
"Fixed a spelling problem when words contain a '.
"
"Revision 2.20  2002/12/11 23:33:16  noel
"Removed a debug setting, again (sigh).
"Added some iskeyword symbols so spell-check would work on things
"like: don't
"
"Revision 2.19  2002/12/11 22:55:19  noel
"Fixed body text end error. I was checking for too specific a case.
"
"Revision 2.18  2002/12/11 14:57:52  noel
"Fixed wrapmargin setting and a line counter error during folding.
"
"Revision 2.17  2002/12/11 00:42:47  noel
"Removed a debug setting, again.
"
"Revision 2.16  2002/12/10 22:21:09  noel
"Moved body text up one tab level. It seems to be more intuitive
"to others.
"
"Revision 2.15  2002/12/10 19:24:13  noel
"Added a function to auto-wrap lines. This could be a problem for entering long headings.
"
"Revision 2.14  2002/12/10 18:11:13  noel
"Removed a debug feature
"
"Revision 2.13  2002/12/10 17:59:42  noel
"Added bodytext.
"Added bodytext folding.
"Modified MyFoldText to show [TEXT] for folded bodytext.
"Added an autocommand to re-sync the folding.
"
"Revision 2.12  2002/12/09 18:16:49  noel
"Fixed a typo and added an extra \ before & for adding upper cas3e
"words.
"
"Revision 2.11  2002/12/09 17:15:37  noel
"Added ,,kA.
"Swapped functions of ,,ka and ,,kA.
"	,,ka	add lowercase version of word to dictionary
"	,,kA	add word as it appears to dictionary
"
"Revision 2.10  2002/12/09 17:08:47  noel
"Fixed an error that occurs when there is just a single spelling checker.
"
"Revision 2.9  2002/12/09 16:42:02  noel
"Fixed error messages on searches with no matches.
"This is part of the spell-check search.
"
"Revision 2.8  2002/12/09 14:21:29  noel
"Fixed spelling highlighting and and spelling searches so that only real matches are highlighed and possible to jump to with ,,kn and ,,kN (and n and N after
"that).
"Modified the "source" statement that load spellfix.vim. Spellfix.vim now
"needs to be in ~/.vimoutliner.
"
"Revision 2.7  2002/12/07 22:08:02  noel
"finished integration of spellfix.vim
"
"Revision 2.6  2002/12/07 16:46:47  noel
"Added these commands to enhance the spelling checker
"	,,kk	speck-check document highlighting errors
"	,,ka	add the word under the cursor to the selected dictionary
"	,,kn	search forward to the next spelling error
"		N and n both work well with this
"	,,kN	search backward to the next spelling error
"		N and n both work well with this
"	,,kq	unhighlight the spelling errors
"
"Revision 2.5  2002/11/27 22:54:28  noel
"Changed date and time formats.
"changed the mappings of ,,0-,,9 so that ,,1 corresponds to show only
"1 level.
"
"Revision 2.4  2002/11/26 00:36:08  noel
"Added more comments.
"Added Steve's GPL header.
"Will keep the RCS info in my version but will remove it for
"distribution.
"
"Revision 2.3  2002/11/21 19:30:37  noel
"Included a patchfile from Steve to:
"	move the if loaded behavior to a place in the file after the settings
"	add an if loaded behavior for the file extension autocommmand
"	added the nocindent setting
"	changed the ,,,, mapping
"	clear the indexexpr setting
"
"Revision 2.2  2002/11/16 00:00:10  noel
"Added more comments.
"Switched the polarity of the if exists(loaded_outliner) function
"Commented-out some experimental features.
"Grouped the user preferences together and separated out the
"VimOutliner operational settings.
"
"Revision 2.1  2002/11/15 23:37:39  noel
"Version 2 Beta Candidate before pre-release modifications

" Documentation {{{1
"
" To read this documentation from within VimOutliner, use 
" ":help vimoutliner" or "help vo".
"
"*vo_help.txt*   For Vim version 6.1.                                #version#
"
"
"                        VimOutliner Users Guide
"
"
"  Outline Processor
"
"
"------------------------------------------------------------------------------
" Contents                                                   *vo* *vimoutliner*
"
"    Introduction        : |vo-intro|
"    License             : |vo-license|
"    Version             : |vo-version|
"    Installation        : |vo-install|
"    Requirements        : |vo-requirements|
"    Commands            : |vo-commands|
"    Customization       : |vo-customize|
"    Bugs                : |vo-bugs|
"    Faq                 : |vo-faq|
"    Todo list           : |vo-todo|
"
"------------------------------------------------------------------------------
" Introduction                                                       *vo-intro*
"------------------------------------------------------------------------------
" License                                                          *vo-license*
"------------------------------------------------------------------------------
" Version                                                          *vo-version*
"------------------------------------------------------------------------------
" Installation                                                     *vo-install*
"------------------------------------------------------------------------------
" Requirements                                                *vo-requirements*
"------------------------------------------------------------------------------
" VimOutliner Commands                                            *vo-commands*
" 
" VimOutliner provides many commands facilitate the handling of outlines.
"
"   <LocalLeader>0 - show all outline levels
"                    equivalent to foldlevel=99999
"
"   <LocalLeader>1 - show 1 outline level
"                    equivalent to foldlevel=0
"
"   <LocalLeader>2 - show 2 outline levels
"                    equivalent to foldlevel=1
"
"   <LocalLeader>3 - show 3 outline levels
"                    equivalent to foldlevel=2
"
"   <LocalLeader>4 - show 4 outline levels
"                    equivalent to foldlevel=3
"
"   <LocalLeader>5 - show 5 outline levels
"                    equivalent to foldlevel=4
"
"   <LocalLeader>6 - show 6 outline levels
"                    equivalent to foldlevel=5
"
"   <LocalLeader>7 - show 7 outline levels
"                    equivalent to foldlevel=6
"
"   <LocalLeader>8 - show 8 outline levels
"                    equivalent to foldlevel=7
"
"   <LocalLeader>9 - show 9 outline levels
"                    equivalent to foldlevel=8
"
"   <LocalLeader>d - insert a date stamp at the beginning of the current line
"                    keeps the current level of indentation
"                    the format is YYYY-MM-DD
"
"   <LocalLeader>t - like <LocalLeader>d but include the time as well
"                    keeps the current level of indentation
"                    the format is YYYY-MM-DD_HH-MM-SS
"
"   <LocalLeader>s - sort a visual selection of headings
"                    will not work on headings with children
"
"   <LocalLeader>S - like <LocalLeader>s but prompt for options
"
"   <LocalLeader>f - invoke the file explorer included with Vim
"
"   <LocalLeader>b - convert document to space-style body text
"                    space-style body is more visually appealing
"                    useful for printing
"                    won't automatically wrap at the end of the line
"
"   <LocalLeader>B - convert document to :-style bodytext
"                    wraps at the end of the line
"                    useful for easy post-processing
"                    slightly less visually appealing
"
"------------------------------------------------------------------------------
" Customization                                                  *vo-customize*
"------------------------------------------------------------------------------
" Bugs                                                                *vo-bugs*
"------------------------------------------------------------------------------
" Faq                                                                  *vo-faq*
"------------------------------------------------------------------------------
" Todo list                                                           *vo-todo*
"------------------------------------------------------------------------------
" Level Colors {{{1
" colors for outline levels 1-9
" Light background {{{2
" added this next conditional at Dillon's recommendation
if &background == "light"
	hi OL1 guifg=black	ctermfg=black
	hi OL2 guifg=red	ctermfg=red
	hi OL3 guifg=blue	ctermfg=blue
	hi OL4 guifg=darkviolet	ctermfg=magenta
	hi OL5 guifg=black	ctermfg=black
	hi OL6 guifg=red	ctermfg=red
	hi OL7 guifg=blue	ctermfg=blue
	hi OL8 guifg=darkviolet	ctermfg=magenta
	hi OL9 guifg=black	ctermfg=black

	" colors for tags
	hi outlTags guifg=darkyellow	ctermfg=darkyellow

	" color for body text
	hi BT1 guifg=darkgreen	ctermfg=green
	hi BT2 guifg=darkgreen	ctermfg=green
	hi BT3 guifg=darkgreen	ctermfg=green
	hi BT4 guifg=darkgreen	ctermfg=green
	hi BT5 guifg=darkgreen	ctermfg=green
	hi BT6 guifg=darkgreen	ctermfg=green
	hi BT7 guifg=darkgreen	ctermfg=green
	hi BT8 guifg=darkgreen	ctermfg=green
	hi BT9 guifg=darkgreen	ctermfg=green

	" colors for folded sections
	"hi Folded guifg=darkcyan guibg=bg	ctermfg=cyan
	"hi Folded guifg=white guibg=bg	ctermfg=white ctermbg=white
	hi Folded NONE
	hi FoldColumn guifg=darkcyan guibg=bg	ctermfg=blue ctermbg=white
	"hi FoldColumn guifg=darkcyan guibg=bg	ctermfg=cyan 

	" colors for experimental spelling error highlighting
	" this only works for spellfix.vim with will be cease to exist soon
	hi spellErr,BadWord gui=underline guifg=darkyellow cterm=underline ctermfg=darkyellow
" Dark background {{{2
else 
	hi OL1 guifg=white	ctermfg=white
	hi OL2 guifg=red	ctermfg=red
	hi OL3 guifg=lightblue	ctermfg=lightblue
	hi OL4 guifg=darkviolet	ctermfg=magenta
	hi OL5 guifg=white	ctermfg=white
	hi OL6 guifg=red	ctermfg=red
	hi OL7 guifg=lightblue	ctermfg=lightblue
	hi OL8 guifg=darkviolet	ctermfg=magenta
	hi OL9 guifg=white	ctermfg=white

	" colors for tags
	hi outlTags guifg=darkyellow	ctermfg=darkyellow

	" color for body text
	hi BT1 guifg=darkgreen	ctermfg=green
	hi BT2 guifg=darkgreen	ctermfg=green
	hi BT3 guifg=darkgreen	ctermfg=green
	hi BT4 guifg=darkgreen	ctermfg=green
	hi BT5 guifg=darkgreen	ctermfg=green
	hi BT6 guifg=darkgreen	ctermfg=green
	hi BT7 guifg=darkgreen	ctermfg=green
	hi BT8 guifg=darkgreen	ctermfg=green
	hi BT9 guifg=darkgreen	ctermfg=green

	" colors for folded sections
	"hi Folded guifg=darkcyan guibg=bg	ctermfg=cyan
	"hi FoldColumn guifg=darkcyan guibg=bg	ctermfg=cyan 
	hi Folded NONE

	" colors for experimental spelling error highlighting
	" this only works for spellfix.vim with will be cease to exist soon
	hi spellErr,SpellErrors,BadWord gui=underline guifg=yellow	cterm=underline ctermfg=yellow
endif

" Syntax {{{1
"syn clear
syn sync fromstart

syn match outlTags '_tag_\w*' contained

" Noel's style of body text {{{2
syntax region BT1 start=+^ \S+ skip=+^ \S+ end=+^\S+me=e-1 end=+^\(\t\)\{1}\S+me=e-2 contains=spellErr,SpellErrors,BadWord contained
syntax region BT2 start=+^\(\t\)\{1} \S+ skip=+^\(\t\)\{1} \S+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT3 start=+^\(\t\)\{2} \S+ skip=+^\(\t\)\{2} \S+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT4 start=+^\(\t\)\{3} \S+ skip=+^\(\t\)\{3} \S+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT5 start=+^\(\t\)\{4} \S+ skip=+^\(\t\)\{4} \S+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT6 start=+^\(\t\)\{5} \S+ skip=+^\(\t\)\{5} \S+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT7 start=+^\(\t\)\{6} \S+ skip=+^\(\t\)\{6} \S+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT8 start=+^\(\t\)\{7} \S+ skip=+^\(\t\)\{7} \S+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT9 start=+^\(\t\)\{8} \S+ skip=+^\(\t\)\{8} \S+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained

"comment-style bodytext as per Steve Litt {{{2
syntax region BT1 start=+^:+ skip=+^:+ end=+^\S+me=e-1 end=+^\(\t\)\{1}\S+me=e-2 contains=spellErr,SpellErrors,BadWord contained
syntax region BT2 start=+^\(\t\)\{1}:+ skip=+^\(\t\)\{1}:+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT3 start=+^\(\t\)\{2}:+ skip=+^\(\t\)\{2}:+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT4 start=+^\(\t\)\{3}:+ skip=+^\(\t\)\{3}:+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT5 start=+^\(\t\)\{4}:+ skip=+^\(\t\)\{4}:+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT6 start=+^\(\t\)\{5}:+ skip=+^\(\t\)\{5}:+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT7 start=+^\(\t\)\{6}:+ skip=+^\(\t\)\{6}:+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT8 start=+^\(\t\)\{7}:+ skip=+^\(\t\)\{7}:+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained
syntax region BT9 start=+^\(\t\)\{8}:+ skip=+^\(\t\)\{8}:+ end=+^\(\t\)*\S+me=s-1 contains=spellErr,SpellErrors,BadWord contained

"comment-style bodytext formatting as per Steve Litt
syntax match Comment "^\s*:.*$"
setlocal fo-=t fo+=crqno
setlocal com=sO:\:\ -,mO:\:\ \ ,eO:\:\:,:\:

" Headings {{{2
syntax region OL1 start=+^[^:\t]+ end=+^[^:\t]+me=e-1 contains=outlTags,BT1,BT2,spellErr,SpellErrors,BadWord,OL2 keepend
syntax region OL2 start=+^\t[^:\t]+ end=+^\t[^:\t]+me=e-2 contains=outlTags,BT2,BT3,spellErr,SpellErrors,BadWord,OL3 keepend
syntax region OL3 start=+^\(\t\)\{2}[^:\t]+ end=+^\(\t\)\{2}[^:\t]+me=e-3 contains=outlTags,BT3,BT4,spellErr,SpellErrors,BadWord,OL4 keepend
syntax region OL4 start=+^\(\t\)\{3}[^:\t]+ end=+^\(\t\)\{3}[^:\t]+me=e-4 contains=outlTags,BT4,BT5,spellErr,SpellErrors,BadWord,OL5 keepend
syntax region OL5 start=+^\(\t\)\{4}[^:\t]+ end=+^\(\t\)\{4}[^:\t]+me=e-5 contains=outlTags,BT5,BT6,spellErr,SpellErrors,BadWord,OL6 keepend
syntax region OL6 start=+^\(\t\)\{5}[^:\t]+ end=+^\(\t\)\{5}[^:\t]+me=e-6 contains=outlTags,BT6,BT7,spellErr,SpellErrors,BadWord,OL7 keepend
syntax region OL7 start=+^\(\t\)\{6}[^:\t]+ end=+^\(\t\)\{6}[^:\t]+me=e-7 contains=outlTags,BT7,BT8,spellErr,SpellErrors,BadWord,OL8 keepend
syntax region OL8 start=+^\(\t\)\{7}[^:\t]+ end=+^\(\t\)\{7}[^:\t]+me=e-8 contains=outlTags,BT8,BT9,spellErr,SpellErrors,BadWord,OL9 keepend
syntax region OL9 start=+^\(\t\)\{8}[^:\t]+ end=+^\(\t\)\{8}[^:\t]+me=e-9 contains=outlTags,BT9,spellErr,SpellErrors,BadWord keepend
"syntax region OL1 start=+^[!-9;-z{|}\~]+ end=+^[!-9;-z{|}\~]+me=e-1 contains=outlTags,BT1,BT2,spellErr,SpellErrors,BadWord,OL2 keepend
"syntax region OL2 start=+^\t[!-9;-z{|}\~]+ end=+^\t[!-9;-z{|}\~]+me=e-2 contains=outlTags,BT2,BT3,spellErr,SpellErrors,BadWord,OL3 keepend
"syntax region OL3 start=+^\(\t\)\{2}[!-9;-z{|}\~]+ end=+^\(\t\)\{2}[!-9;-z{|}\~]+me=e-3 contains=outlTags,BT3,BT4,spellErr,SpellErrors,BadWord,OL4 keepend
"syntax region OL4 start=+^\(\t\)\{3}[!-9;-z{|}\~]+ end=+^\(\t\)\{3}[!-9;-z{|}\~]+me=e-4 contains=outlTags,BT4,BT5,spellErr,SpellErrors,BadWord,OL5 keepend
"syntax region OL5 start=+^\(\t\)\{4}[!-9;-z{|}\~]+ end=+^\(\t\)\{4}[!-9;-z{|}\~]+me=e-5 contains=outlTags,BT5,BT6,spellErr,SpellErrors,BadWord,OL6 keepend
"syntax region OL6 start=+^\(\t\)\{5}[!-9;-z{|}\~]+ end=+^\(\t\)\{5}[!-9;-z{|}\~]+me=e-6 contains=outlTags,BT6,BT7,spellErr,SpellErrors,BadWord,OL7 keepend
"syntax region OL7 start=+^\(\t\)\{6}[!-9;-z{|}\~]+ end=+^\(\t\)\{6}[!-9;-z{|}\~]+me=e-7 contains=outlTags,BT7,BT8,spellErr,SpellErrors,BadWord,OL8 keepend
"syntax region OL8 start=+^\(\t\)\{7}[!-9;-z{|}\~]+ end=+^\(\t\)\{7}[!-9;-z{|}\~]+me=e-8 contains=outlTags,BT8,BT9,spellErr,SpellErrors,BadWord,OL9 keepend
"syntax region OL9 start=+^\(\t\)\{8}[!-9;-z{|}\~]+ end=+^\(\t\)\{8}[!-9;-z{|}\~]+me=e-9 contains=outlTags,BT9,spellErr,SpellErrors,BadWord keepend

" Auto-commands {{{1
if !exists("autocommand_vo_loaded")
	let autocommand_vo_loaded = 1
	au BufNewFile,BufRead *.otl                     setf outliner
"	au CursorHold *.otl                             syn sync fromstart
	set updatetime=500
endif

" The End
" vim600: set foldmethod=marker foldlevel=0:
