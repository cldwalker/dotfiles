"beginning comments
	"#########################################################################
	"# ftplugin/vo_base.vim: VimOutliner functions, commands and settings
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
"$Revision: 1.3 $"
"$Date: 2004/01/21 04:47:55 $
"$Log: vo_base.vim,v $
"Revision 1.3  2004/01/21 04:47:55  bozo
"changed 'tags' option
"
"Revision 1.2  2004/01/13 23:00:19  bozo
"first tuning
"
"Revision 2.47  2003/06/16 23:57:20  noel
"Set UseSpaceColon=0. This is now the standard.
"
"Revision 2.46  2003/06/04 11:54:25  noel
"The behavior of the "d" and "t" commands have been improved and put into
"functions. These commands are now mapped to call the improved functions.
"
"Revision 2.45  2003/06/04 11:25:56  noel
"Moved the modification to the tags path outside the "if" statement in
"autocommands in ftplugin. Completely removed the line from syntax.
"
"Revision 2.44  2003/05/27 13:33:34  noel
"Added Vim style folds to both vo_base files to make them easier to read.
"Added a mode line to the end of each to activate the folds.
"Added a "Documentation" section that is mostly empty. This section will
"eventually be extracted automatically to form the online help via Vim's
"built-in help mechanisms.
"
"Revision 2.43  2003/05/23 18:36:44  noel
"More trouble with the ,,d function and retaining proper indentation.
"
"Revision 2.42  2003/05/23 16:02:42  noel
"Added tag file support for ~/.vimoutliner.
"
"Revision 2.41  2003/05/23 13:55:25  noel
"Modified the d and t commands. They did not work properly on closed folds.
"Commented-out the d and t commands when in insert mode. I have not used them
"and they don't work properly.
"
"Revision 2.40  2003/05/17 23:29:25  noel
"Modified date and time (,,d/,,t) to place date/time at beginning of
"line instead of end of line to allow for sorting.
"
"Revision 2.39  2003/05/17 22:49:26  noel
"Changed ^M to <cr> in all occurrances.
"Modified date (<leader>d) and time (<leader>t) to add date/time to end of
"current line.
"
"Revision 2.38  2003/03/05 17:58:22  cepl
"Personal configuration file was not run from the user's $HOME directory.
"Fixed.
"
"Revision 2.37  2003/03/03 16:24:49  noel
"Added ~/.vim and ~/.vimoutliner as places to look for tag files.
"
"Revision 2.36  2003/03/01 17:37:41  noel
"Changed the filetype name to our new standard: vo_base
"
"Revision 2.35  2003/02/09 15:04:56  noel
"Changed key mappings to be local to the current buffer only. They
"will also be loaded for any subsequent .otl file.
"Changed key mappings to use an easily modifiable leader. In this case
"",,".
"Changed the scope of some variables. They had a buffer scoping but now
"have a function scope.
"
"Revision 2.34  2003/02/08 22:07:47  noel
"Removed spellfix functions. Perhaps I'll make them another plugin.
"
"Revision 2.33  2003/02/08 21:31:01  noel
"Split out syntax settings as Dillon originally showed.
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
"}}}1

" Load the plugin {{{1
" Prevenet the plugin from being loaded twice
"if exists("b:did_ftplugin")
"  finish
"endif
let b:did_ftplugin = 1
let b:current_syntax = "outliner"

" User Preferences {{{1

let maplocalleader = ",,"		" this is prepended to VO key mappings

"setlocal ignorecase			" searches ignore case
"setlocal smartcase			" searches use smart case

let use_space_colon=0

" End User Preferences

" VimOutliner Standard Settings {{{1
setlocal autoindent	
setlocal backspace=2
setlocal wrapmargin=5
setlocal wrap!
setlocal tw=78
setlocal noexpandtab
setlocal nosmarttab
setlocal softtabstop=0 
setlocal foldlevel=20
"setlocal foldcolumn=1		" turns on "+" at the begining of close folds
setlocal foldcolumn=4		" turns on "+" at the begining of close folds
setlocal tabstop=4			" tabstop and shiftwidth must match
setlocal shiftwidth=4		" values from 2 to 8 work well
"setlocal foldmethod=expr
setlocal foldmethod=indent
setlocal foldexpr=MyFoldLevel(v:lnum)
setlocal indentexpr=
setlocal nocindent
setlocal iskeyword=@,39,45,48-57,_,129-255

" Vim Outliner Functions {{{1

if !exists("loaded_vimoutliner_functions")
let loaded_vimoutliner_functions=1

" MakeChars() {{{2
" Make a string of characters
" Used for strings of repeated characters
function MakeChars(count,char)
	let i = 0
	let l:chars=""
	while i < a:count
		let l:chars = l:chars . a:char
		let i = i + 1
	endwhile
	return l:chars
endfunction
"}}}2
" MakeSpaces() {{{2
" Make a string of spaces
function MakeSpaces(count)
	return MakeChars(a:count," ")
endfunction
"}}}2
" MakeDashes() {{{2
" Make a string of dashes
function MakeDashes(count)
	return MakeChars(a:count,"-")
endfunction
"}}}2
" MyFoldText() {{{2
" Create string used for folded text blocks
function MyFoldText()
	let l:MySpaces = MakeSpaces(&sw)
	let l:line = getline(v:foldstart)
	let l:bodyTextFlag=0
	if l:line =~ "^\t* \\S" || l:line =~ "^\t*\:"
		let l:bodyTextFlag=1
		let l:MySpaces = MakeSpaces(&sw * (v:foldlevel-1))
		let l:line = l:MySpaces."[TEXT]"
	endif
	let l:sub = substitute(l:line,'\t',l:MySpaces,'g')
	let l:len = strlen(l:sub)
	let l:sub = l:sub . " " . MakeDashes(58 - l:len) 
	let l:sub = l:sub . " (" . ((v:foldend + l:bodyTextFlag)- v:foldstart)
	if ((v:foldend + l:bodyTextFlag)- v:foldstart) == 1
		let l:sub = l:sub . " line)" 
	else
		let l:sub = l:sub . " lines)" 
	endif
	return l:sub
endfunction
"}}}2
" InsertDate() {{{2
" Insert today's date at the beginning of a header without disturbing the
" current folding.
function InsertDate()
	let @x = substitute(system("date +%Y-%m-%d"),"\n"," ", "")
	normal! ^"xP
endfunction
"}}}2
" InsertDateTime() {{{2
" Insert today's date at the beginning of a header without disturbing the
" current folding.
function InsertDateTime()
	let @x = substitute(system("date +%Y-%m-%d_%H-%M-%S"),"\n"," ", "")
	normal! ^"xP
endfunction
"}}}2
" Ind(line) {{{2
" Determine the indent level of a line.
" Courtesy of Gabriel Horner
function! Ind(line)
	return indent(a:line)/&tabstop
endfunction
"}}}2
" BodyText(line) {{{2
" Determine the indent level of a line.
function! BodyText(line)
	return (match(getline(a:line),"^\t*:") == 0)
endfunction
"}}}2
" MyFoldLevel(Line) {{{2
" Determine the fold level of a line.
function MyFoldLevel(line)
	let l:myindent = Ind(a:line)
	let l:nextindent = Ind(a:line+1)

	if BodyText(a:line)
		if (BodyText(a:line-1) == 0)
			return '>'.(l:myindent+1)
		endif
		if (BodyText(a:line+1) == 0)
			return '<'.(l:myindent+1)
		endif
		return (l:myindent+1)
	else
		if l:myindent < l:nextindent
			return '>'.(l:myindent+1)
		endif
		if l:myindent > l:nextindent
			"return '<'.(l:nextindent+1)
			return (l:myindent)
			"return '<'.(l:nextindent-1)
		endif
		return l:myindent
	endif
endfunction
"}}}2
" This should be a setlocal but that doesn't work when switching to a new .otl file
" within the same buffer. Using :e has demonstrates this.
set foldtext=MyFoldText()

setlocal fillchars=|, 

endif " if !exists("loaded_vimoutliner_functions")
" End Vim Outliner Functions

" Vim Outliner Key Mappings {{{1
" insert the date
map <buffer> <localleader>d :call InsertDate()<cr>

" insert the date and time
map <buffer> <localleader>t :call InsertDateTime()<cr>

" sort a list naturally
map <buffer> <localleader>s :!sort<cr>
" sort a list, but you supply the options
map <buffer> <localleader>S :!sort -

" invoke the file explorer
map <buffer> <localleader>f :e .<cr>
imap <buffer> <localleader>f :e .<cr>

" Insert a fence for segemented lists.
" I also use this divider to create a <hr> when converting to html
map <buffer> <localleader>- o----------------------------------------0
imap <buffer> <localleader>- ----------------------------------------<cr>

" switch document between the two types of bodytext styles
if use_space_colon == 1
  "   First, convert document to the marker style
  map <localleader>b :%s/\(^\t*\) :/\1/e<cr>:%s/\(^\t*\) /\1 : /e<cr>:let @/=""<cr>
  "   Now, convert document to the space style
  map <localleader>B :%s/\(^\t*\) :/\1/e<cr>:let @/=""<cr>
else
  "   First, convert document to the marker style
  map <localleader>b :%s/\(^\t*\):/\1/e<cr>:%s/\(^\t*\) /\1: /e<cr>:let @/=""<cr>
  "   Now, convert document to the space style
  map <localleader>B :%s/\(^\t*\):/\1/e<cr>:let @/=""<cr>
endif

" Steve's additional mappings start here
map <buffer>   <C-K>         <C-]>
map <buffer>   <C-N>         <C-T>
map <buffer>   <localleader>0           :set foldlevel=99999<CR>
map <buffer>   <localleader>9           :set foldlevel=8<CR>
map <buffer>   <localleader>8           :set foldlevel=7<CR>
map <buffer>   <localleader>7           :set foldlevel=6<CR>
map <buffer>   <localleader>6           :set foldlevel=5<CR>
map <buffer>   <localleader>5           :set foldlevel=4<CR>
map <buffer>   <localleader>4           :set foldlevel=3<CR>
map <buffer>   <localleader>3           :set foldlevel=2<CR>
map <buffer>   <localleader>2           :set foldlevel=1<CR>
map <buffer>   <localleader>1           :set foldlevel=0<CR>
map <buffer>   <localleader>,,           :source $HOME/.vimoutliner/outliner.vim<CR>
map <buffer>!  <localleader>w           <Esc>:w<CR>a
" Steve's additional mappings end here

" Placeholders for already assigned but non-functional commands
map <buffer> <localleader>h :echo "VimOutliner reserved command: ,,h"<cr>
imap <buffer> <localleader>h :echo "VimOutliner reserved command: ,,h"<cr>
map <buffer> <localleader>H :echo "VimOutliner reserved command: ,,H"<cr>
imap <buffer> <localleader>H :echo "VimOutliner reserved command: ,,H"<cr>
map <buffer> <localleader>D :echo "VimOutliner reserved command: ,,D"<cr>
imap <buffer> <localleader>D :echo "VimOutliner reserved command: ,,D"<cr>

" End of Vim Outliner Key Mappings }}}1
" Auto-commands {{{1
if !exists("autocommand_vo_loaded")
	let autocommand_vo_loaded = 1
	au BufNewFile,BufRead *.otl                     setf vo_base
"	au CursorHold *.otl                             syn sync fromstart
	set updatetime=500
endif
"}}}1

" this command needs to be run every time so Vim doesn't forget where to look
"setlocal tags^=$HOME/.vimoutliner/vo_tags.tag
setlocal tags^=$HOME/.vim/vo_tags.tag

" Added an indication of current syntax as per Dillon Jones' request
let b:current_syntax = "outliner"
hi Folded NONE
setlocal foldignore=
 
" Personal configuration options files as per Matej Cepl
setlocal runtimepath+=$HOME/.vimoutliner,$HOME
ru .vimoutlinerrc
" The End
" vim600: set foldmethod=marker foldlevel=0:
