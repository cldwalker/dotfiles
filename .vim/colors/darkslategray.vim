" vim: set tw=0 sw=4 sts=4 et:

" Vim color file
" Maintainer: Tuomas Susi <tsusi@cc.hut.fi>
" Last Change: 2003 June 18
" Version: 1.4
" URI: http://www.hut.fi/~/tsusi/vim/darkslategray.vim

" Emacs in RedHat Linux used to have (still does?) a kind of 'Wheat on
" DarkSlateGray' color scheme by default. This color scheme is created in the
" same spirit. 
"
" Darkslategray is intended to be nice to your eyes (low contrast) and to take
" advantage of syntax hilighting as much as possible. 
"
" This color scheme is for the GUI only, I'm happy with default console colors.
" Needs at least vim 6.0.


""" Init stuff

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "darkslategray"


""" Colors

" GUI colors
hi Cursor               guifg=fg guibg=Orchid
hi CursorIM             guifg=NONE guibg=Orchid1
hi Directory            guifg=LightCyan
hi DiffAdd              guibg=DarkSlateGray4
hi DiffChange           guibg=Pink4
hi DiffDelete           gui=bold guifg=fg guibg=Black
hi DiffText             gui=bold guibg=SlateBlue3
hi ErrorMsg             gui=bold guifg=White guibg=Red
hi VertSplit            gui=bold guifg=DarkKhaki guibg=Black
hi Folded               guifg=Black guibg=DarkKhaki
hi FoldColumn           guifg=Black guibg=DarkKhaki
hi IncSearch            gui=bold guifg=Black guibg=White
hi LineNr               gui=bold guifg=DarkKhaki guibg=DarkSlateGray4
hi ModeMsg              gui=bold
hi MoreMsg              gui=bold guifg=LightSeaGreen
hi NonText              gui=bold guifg=White
hi Normal               guibg=DarkSlateGray guifg=Wheat
hi Question             gui=bold guifg=Tomato
hi Search               gui=bold guifg=Black guibg=Gold
hi SpecialKey           guifg=Cyan
hi StatusLine           gui=bold guifg=Khaki guibg=Black
hi StatusLineNC         guibg=DarkKhaki guifg=Gray25
hi Title                gui=bold guifg=Tomato
hi Visual               guifg=Black guibg=fg
hi VisualNOS            gui=bold guifg=Black guibg=fg
hi WarningMsg           guifg=White guibg=Tomato
hi WildMenu             gui=bold guifg=Black guibg=Yellow

" I use GTK and don't wanna change these
"hi Menu foobar
"hi Scrollbar foobar
"hi Tooltip foobar

" Colors for syntax highlighting
hi Comment              guifg=Orchid

hi Constant             guifg=Aquamarine
    hi String           guifg=Aquamarine
    hi Character        guifg=Aquamarine
    hi Number           guifg=LightBlue
    hi Boolean          guifg=LightCyan
    hi Float            guifg=LightBlue

hi Identifier           guifg=Thistle
    hi Function         guifg=White

hi Statement            gui=bold guifg=LightSteelBlue
    hi Conditional      gui=bold guifg=LightSteelBlue
    hi Repeat           gui=bold guifg=SteelBlue
    hi Label            gui=bold guifg=SteelBlue
    hi Operator         gui=bold guifg=LightSteelBlue
    hi Keyword          gui=bold guifg=LightSteelBlue
    hi Exception        gui=bold guifg=LightSteelBlue

hi PreProc              guifg=Yellow2
    hi Include          guifg=Yellow3
    hi Define           guifg=Yellow2
    hi Macro            guifg=Yellow2
    hi PreCondit        gui=bold guifg=Yellow2

hi Type                 gui=bold guifg=PaleGreen
    hi StorageClass     guifg=Green
    hi Structure        guifg=LightSeaGreen
    hi Typedef          guifg=PaleTurquoise

hi Special              guifg=Tomato
    "Underline Character
    hi SpecialChar      gui=underline guifg=Aquamarine
    hi Tag              guifg=DarkKhaki
    "Statement
    hi Delimiter        gui=bold guifg=LightSteelBlue
    "Bold comment (in Java at least)
    hi SpecialComment   gui=bold guifg=Orchid
    hi Debug            gui=bold guifg=Red

hi Underlined           gui=underline

hi Ignore               guifg=bg

hi Error                gui=bold guifg=White guibg=Red

hi Todo                 gui=bold guifg=Black guibg=Orchid1

