let g:color_1 = "#231f20" " dark gray
let g:color_2 = "#bb4430" " reddish
let g:color_3 = "#1a3637" " dark teal
let g:color_4 = "#241d04" " dark yellow
let g:color_5 = "#453321" " brown

" Set colorscheme
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="essentials"

" Syntax highlighting
hi Normal ctermfg=15 ctermbg=1 guifg=#ffffff guibg=#231f20
hi Comment ctermfg=8 ctermbg=1 guifg=#bb4430 guibg=#231f20
hi Constant ctermfg=3 guifg=#1a3637
hi Identifier ctermfg=2 guifg=#241d04
hi Statement ctermfg=1 guifg=#453321
hi PreProc ctermfg=5 guifg=#241d04
hi Type ctermfg=6 guifg=#453321
hi Underlined ctermfg=4 guifg=#241d04 gui=underline
hi Ignore ctermfg=7 ctermbg=1 guifg=#231f20 guibg=#231f20

" Set color palette
hi CursorLineNr ctermfg=15 ctermbg=4 guifg=#ffffff guibg=#453321
hi CursorLine ctermfg=NONE ctermbg=4 guifg=NONE guifg=NONE guibg=#453321
hi LineNr ctermfg=15 ctermbg=1 guifg=#bb4430 guibg=#231f20
hi Visual ctermfg=NONE ctermbg=3 guifg=NONE guibg=#1a3637
hi Search ctermfg=NONE ctermbg=5 guifg=NONE guifg=NONE guibg=#453321
hi MatchParen ctermfg=NONE ctermbg=5 guifg=NONE guifg=NONE guibg=#453321
hi VertSplit ctermfg=15 ctermbg=1 guifg=#bb4430 guibg=#231f20
hi StatusLine ctermfg=15 ctermbg=4 guifg=#ffffff guibg=#453321
hi StatusLineNC ctermfg=15 ctermbg=1 guifg=#bb4430 guibg=#231f20
hi Pmenu ctermfg=15 ctermbg=4 guifg=#ffffff guibg=#453321
hi PmenuSel ctermfg=15 ctermbg=5 guifg=#ffffff guibg=#453321
hi Folded ctermfg=15 ctermbg=1 guifg=#bb4430 guibg=#231f20
hi FoldColumn ctermfg=15 ctermbg=1 guifg=#bb4430 guibg=#231f20

" Set syntax colors
hi Comment ctermfg=8 guifg=#bb4430
hi Constant ctermfg=3 guifg=#1a3637
hi Identifier ctermfg=2 guifg=#241d04
