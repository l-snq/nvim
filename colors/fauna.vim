" Neovim color scheme using provided hex values
" Created by ChatGPT

" Define colors
let g:color_1 = "#BEC5AD" " light gray
let g:color_2 = "#A4B494" " greenish gray
let g:color_3 = "#519872" " light green
let g:color_4 = "#3B5249" " dark green
let g:color_5 = "#34252F" " dark purple

" Set colorscheme
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="chatgpt"

" Syntax highlighting
hi Normal ctermfg=15 ctermbg=black guifg=#ffffff guibg=#000000
hi Comment ctermfg=8 ctermbg=black guifg=#808080 guibg=#000000
hi Constant ctermfg=3 guifg=#ffff00
hi Identifier ctermfg=2 guifg=#00ff00
hi Statement ctermfg=1 guifg=#ff0000
hi PreProc ctermfg=5 guifg=#ff00ff
hi Type ctermfg=6 guifg=#00ffff
hi Underlined ctermfg=4 guifg=#00ff00 gui=underline
hi Ignore ctermfg=7 ctermbg=black guifg=#000000 guibg=#000000

" Set color palette
hi CursorLineNr ctermfg=15 ctermbg=4 guifg=#ffffff guibg=#3B5249
hi CursorLine ctermfg=NONE ctermbg=4 guifg=NONE guifg=NONE guibg=#3B5249
hi LineNr ctermfg=15 ctermbg=black guifg=#BEC5AD guibg=#000000
hi Visual ctermfg=NONE ctermbg=2 guifg=NONE guibg=#A4B494
hi Search ctermfg=NONE ctermbg=5 guifg=NONE guifg=NONE guibg=#34252F
hi MatchParen ctermfg=NONE ctermbg=5 guifg=NONE guifg=NONE guibg=#34252F
hi VertSplit ctermfg=15 ctermbg=black guifg=#BEC5AD guibg=#000000
hi StatusLine ctermfg=15 ctermbg=4 guifg=#ffffff guibg=#3B5249
hi StatusLineNC ctermfg=15 ctermbg=black guifg=#BEC5AD guibg=#000000
hi Pmenu ctermfg=15 ctermbg=4 guifg=#ffffff guibg=#3B5249
hi PmenuSel ctermfg=15 ctermbg=5 guifg=#ffffff guibg=#34252F
hi Folded ctermfg=15 ctermbg=black guifg=#BEC5AD guibg=#000000
hi FoldColumn ctermfg=15 ctermbg=black guifg=#BEC5AD guibg=#000000

" Set syntax colors
hi Comment ctermfg=8 guifg=#808080
hi Constant ctermfg=3 guifg=#C46D6D
hi Identifier ctermfg=2 guifg=#A4B

