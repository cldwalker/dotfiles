
" Vim color file
" Maintainer:   Stefan Karlsson <stefan.74@comhem.se>
" Last Change:  12 May 2004


set background=light

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="chela_light"


" =======================================================

hi comment      guibg=#ffffff   guifg=#808080   gui=none

hi constant     guibg=#ffffff   guifg=#ff3333   gui=none
hi specialchar  guibg=#ffffff   guifg=#ff3333   gui=underline

hi identifier   guibg=#ffffff   guifg=#0033ff   gui=none

hi statement    guibg=#ffffff   guifg=#0033ff   gui=none
hi label        guibg=#ffffff   guifg=#0033ff   gui=italic

hi preproc      guibg=#ffffff   guifg=#00bb77   gui=none
hi include      guibg=#ffffff   guifg=#00bb77   gui=none
hi precondit    guibg=#ffffff   guifg=#006622   gui=none

hi type         guibg=#ffffff   guifg=#0033ff   gui=none

hi special      guibg=#ffffff   guifg=#ff6600   gui=none

hi error        guibg=#ff3333   guifg=#ffffff   gui=none

hi todo         guibg=#ff3333   guifg=#ffffff   gui=none


" =======================================================

hi cursor       guibg=#202020   guifg=#ffffff   gui=none

hi directory    guibg=#ffffff   guifg=#0044ff   gui=bold

hi diffadd      guibg=#70ff70   guifg=#020202   gui=none
hi diffdelete   guibg=#ff5050   guifg=#ff5050   gui=none
hi diffchange   guibg=#ffff00   guifg=#808080   gui=none
hi difftext     guibg=#ffff00   guifg=#202020   gui=bold

hi errormsg     guibg=#ff3333   guifg=#ffffff   gui=none

hi vertsplit    guibg=#0033ff   guifg=#0033ff   gui=none

hi folded       guibg=#e0e0e0   guifg=#0033ff   gui=none
hi foldcolumn   guibg=#e0e0e0   guifg=#404040   gui=none

hi linenr       guibg=#ffffff   guifg=#808080   gui=none

hi modemsg      guibg=#ffffff   guifg=#606060   gui=none

hi moremsg      guibg=#ffffff   guifg=#0033ff   gui=italic
hi question     guibg=#ffffff   guifg=#0033ff   gui=italic

hi nontext      guibg=#ffffff   guifg=#a0a0a0   gui=none

hi normal       guibg=#ffffff   guifg=#020202   gui=none

hi search       guibg=#ffff00   guifg=#020202   gui=none
hi incsearch    guibg=#ff3333   guifg=#ffffff   gui=none

hi specialkey   guibg=#ff3333   guifg=#ffffff   gui=none

hi statusline   guibg=#0033ff   guifg=#ffffff   gui=none
hi statuslinenc guibg=#0033ff   guifg=#a0a0f0   gui=none

hi title        guibg=#ffffff   guifg=#0033ff   gui=none

hi visual       guibg=#b0b0b0   guifg=#000000   gui=none

hi warningmsg   guibg=#ffffff   guifg=#ff0000   gui=none

hi wildmenu     guibg=#aaaaaa   guifg=#000000   gui=none

