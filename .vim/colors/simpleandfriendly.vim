" Vim color file
" Maintainer:	Thomas Schmall <ts_nowhere@yahoo.com>
" Last Change:	2003 Oct 14

" This color scheme uses a light grey background.

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "simpleandfriendly"

hi Normal ctermfg=Black ctermbg=LightGrey guifg=Black guibg=grey90

"Set nice colors #DC6210
"Cursor is Cyan when ":lmap" mappings are active
hi lCursor guibg=Cyan guifg=NONE

"Text below the last line is darker grey
hi NonText 	guibg=grey80
"Special Characters
hi Special 	guibg=grey90	guifg=Slateblue	gui=NONE
"Normal text is black background is grey
hi Normal	guifg=black		guibg=grey89
hi Comment	guifg=Orange	term=bold	guibg=grey94	ctermfg=DarkCyan	
"Constants are not underlined but have a slightly lighter background
hi Constant	guifg=#80a0ff 	gui=NONE guibg=grey92	term=underline	
"Words like _if_ or _else_  (Grey27)
hi Statement	guifg=#4A2B99	gui=NONE	ctermfg=Yellow 

"hi Special	term=bold	ctermfg=DarkMagenta	guifg=Red
"hi Identifier	term=underline	cterm=bold ctermfg=Cyan	guifg=#40ffff
"color for _NONE_ for instance:
hi PreProc	term=underline	ctermfg=LightBlue	guifg=#DC6210
"color for _guifg_ for instance: (SlateBlue works here nice too)
hi Type		guifg=Seagreen gui=None	term=underline	ctermfg=LightGreen
hi Function	term=bold 		guifg=#61577A
"hi Repeat	term=underline	ctermfg=White		guifg=white
"hi Operator	guifg=DarkRed	ctermfg=Red	
"hi Ignore	guifg=bg	ctermfg=black
"hi Error	term=reverse 	ctermbg=Red ctermfg=White guibg=Red guifg=White
"hi Todo		term=standout	 ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow
