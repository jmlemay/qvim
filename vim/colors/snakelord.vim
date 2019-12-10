" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "snakelord"
"hi Normal	term=none	ctermfg=white	//! This doesn't work in with deepin
hi Comment	term=none	ctermfg=darkgrey
"hi Constant	term=underline	ctermfg=Magenta		guifg=Magenta
"hi Special	term=bold		ctermfg=DarkMagenta	guifg=Red
"hi Identifier term=underline	cterm=bold			ctermfg=Cyan guifg=#40ffff
"hi Statement term=bold		ctermfg=Yellow gui=bold	guifg=#aa4444
"hi PreProc	term=underline	ctermfg=LightBlue	guifg=#ff80ff
"hi Type	term=underline		ctermfg=LightGreen	guifg=#60ff60 gui=bold
"hi Function	term=bold		ctermfg=White guifg=White
"hi Repeat	term=underline	ctermfg=White		guifg=white
"hi Operator				ctermfg=Red			guifg=Red
"hi Ignore				ctermfg=black		guifg=bg
"hi Error	term=reverse ctermbg=Red ctermfg=White guibg=Red guifg=White
"hi Todo	term=standout ctermbg=Yellow ctermfg=Black guifg=Blue guibg=Yellow

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
" Everything is normal except comments
hi link qFunction		Function
hi link qLang			Normal
hi link qError			Normal
hi link qGlobal			Normal
hi link qIdentifier		Normal
hi link qPlaceholder	Normal
hi link kOperator		Normal
hi link kTodo			Normal
hi link kExit			Normal
hi link kComment		Comment
hi link kSpecialComment	Comment
hi link kNumber			Normal
hi link kFunction		Normal
hi link kBoolean		Normal
hi link kSeparator		Normal
hi link kSpecial		Normal
hi link kGlobal			Normal
hi link kIdentifier		Normal
hi link kPrimitive		Normal
hi link	kError			Normal
hi link qLib			Normal
hi link kPlaceholder	Normal
hi link kConditional	Normal
hi link Function		Normal
hi link kRepeat			Normal
hi link kLang			Normal
hi link kSymbol			Normal
hi link kHandle			Normal
hi link kPreproc		Normal
hi link kCast			Normal
hi link kString			Normal
hi link kSpecialChar	Normal
hi link kContext		Normal
hi link kSyscmd			Normal
