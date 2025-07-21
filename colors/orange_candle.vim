" Name: orange_candle
" Author: Modified from candle by SNQ
" Maintainer: Modified version
" Notes: A dark colorscheme with various shades of orange for syntax highlighting

" Orange color palette used:
" #0D0D0D - background (unchanged)
" #2A1A0D - very dark orange (for subtle elements)
" #4A2D1A - dark orange (for comments, line numbers)
" #CC6600 - medium orange (for constants, strings)
" #FF7F00 - bright orange (for keywords, statements)
" #FF9933 - light orange (for functions, identifiers)
" #FFAA55 - lighter orange (for special elements)
" #FFBB66 - very light orange (for normal text)

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="orange_candle"

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#FFBB66    guibg=#0D0D0D    gui=NONE
hi Cursor          ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#FFBB66    guibg=#0D0D0D    gui=NONE
hi CursorLine      ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#FFBB66    guibg=#0D0D0D    gui=NONE
hi LineNr          ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE
hi CursorLineNR    ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=NONE       guibg=#0D0D0D    gui=NONE
hi FoldColumn      ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE
hi SignColumn      ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE
hi Folded          ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE

" -------------------------
" - Window/Tab delimiters -
" -------------------------
hi VertSplit       ctermfg=Black           ctermbg=Black    cterm=NONE    guifg=#0D0D0D    guibg=#0D0D0D    gui=NONE
hi ColorColumn     ctermfg=Black           ctermbg=Black    cterm=NONE    guifg=#0D0D0D    guibg=#0D0D0D    gui=NONE
hi TabLine         ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#2A1A0D    guibg=#0D0D0D    gui=NONE
hi TabLineFill     ctermfg=Black           ctermbg=Black    cterm=NONE    guifg=#0D0D0D    guibg=#0D0D0D    gui=NONE
hi TabLineSel      ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE
hi Search          ctermfg=Black           ctermbg=Yellow   cterm=NONE    guifg=#0D0D0D    guibg=#FF9933    gui=NONE
hi IncSearch       ctermfg=Black           ctermbg=Yellow   cterm=NONE    guifg=#0D0D0D    guibg=#FFAA55    gui=NONE

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE
hi StatusLineNC    ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#2A1A0D    guibg=#0D0D0D    gui=NONE
hi WildMenu        ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE
hi Question        ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE
hi Title           ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FFAA55    guibg=#0D0D0D    gui=NONE
hi ModeMsg         ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE
hi MoreMsg         ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=Yellow          ctermbg=DarkYellow cterm=NONE    guifg=#FFAA55    guibg=#4A2D1A    gui=NONE
hi Visual          ctermfg=Yellow          ctermbg=DarkYellow cterm=NONE    guifg=#FFBB66    guibg=#4A2D1A    gui=NONE
hi VisualNOS       ctermfg=Yellow          ctermbg=DarkYellow cterm=NONE    guifg=#FFBB66    guibg=#4A2D1A    gui=NONE
hi NonText         ctermfg=DarkYellow      ctermbg=Black      cterm=NONE    guifg=#2A1A0D    guibg=#0D0D0D    gui=NONE

hi Todo            ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FFAA55    guibg=#0D0D0D    gui=NONE
hi Underlined      ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE
hi Error           ctermfg=Red             ctermbg=Black    cterm=NONE    guifg=#FF6600    guibg=#0D0D0D    gui=NONE
hi ErrorMsg        ctermfg=Red             ctermbg=Black    cterm=NONE    guifg=#FF6600    guibg=#0D0D0D    gui=NONE
hi WarningMsg      ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Ignore          ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE
hi SpecialKey      ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE
hi SpaceChar       ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE
hi Space           ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#CC6600    guibg=#0D0D0D    gui=NONE
hi String          ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#CC6600    guibg=#0D0D0D    gui=NONE
hi StringDelimiter ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Character       ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#CC6600    guibg=#0D0D0D    gui=NONE
hi Number          ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#CC6600    guibg=#0D0D0D    gui=NONE
hi Boolean         ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#CC6600    guibg=#0D0D0D    gui=NONE
hi Float           ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#CC6600    guibg=#0D0D0D    gui=NONE

hi Identifier      ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE
hi Function        ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Conditional     ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Repeat          ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Label           ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Operator        ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Keyword         ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Exception       ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Comment         ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE

hi Special         ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FFAA55    guibg=#0D0D0D    gui=NONE
hi SpecialChar     ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FFAA55    guibg=#0D0D0D    gui=NONE
hi Tag             ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FFAA55    guibg=#0D0D0D    gui=NONE
hi Delimiter       ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE
hi SpecialComment  ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FFAA55    guibg=#0D0D0D    gui=NONE
hi Debug           ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FFAA55    guibg=#0D0D0D    gui=NONE

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Include         ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Define          ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi Macro           ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi PreCondit       ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE

hi Type            ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE
hi StorageClass    ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE
hi Structure       ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE
hi Typedef         ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=Green           ctermbg=Black    cterm=NONE    guifg=#CC6600    guibg=#0D0D0D    gui=NONE
hi DiffChange      ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi DiffDelete      ctermfg=Red             ctermbg=Black    cterm=NONE    guifg=#FF6600    guibg=#0D0D0D    gui=NONE
hi DiffText        ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FFAA55    guibg=#0D0D0D    gui=NONE

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#CC6600    guibg=#0D0D0D    gui=NONE
hi PmenuSel        ctermfg=Yellow          ctermbg=DarkYellow cterm=NONE    guifg=#FFBB66    guibg=#4A2D1A    gui=NONE
hi PmenuSbar       ctermfg=DarkYellow      ctermbg=Black    cterm=NONE    guifg=#4A2D1A    guibg=#0D0D0D    gui=NONE
hi PmenuThumb      ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#CC6600    guibg=#0D0D0D    gui=NONE

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=Red             ctermbg=Black    cterm=NONE    guifg=#FF6600    guibg=#0D0D0D    gui=NONE
hi SpellCap        ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF7F00    guibg=#0D0D0D    gui=NONE
hi SpellLocal      ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FF9933    guibg=#0D0D0D    gui=NONE
hi SpellRare       ctermfg=Yellow          ctermbg=Black    cterm=NONE    guifg=#FFAA55    guibg=#0D0D0D    gui=NONE
