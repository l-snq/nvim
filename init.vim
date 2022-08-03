set nocompatible


call plug#begin()

    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'junegunn/seoul256.vim'
    Plug 'franbach/miramare'
    Plug 'sheerun/vim-polyglot'
    Plug 'ulwlu/elly.vim'
    Plug 'akinsho/bufferline.nvim'
    Plug 'preservim/nerdtree'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'BurntSushi/ripgrep'
    Plug 'windwp/nvim-autopairs'
call plug#end()


set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number 
set termguicolors

let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1
lua <<EOF
require("bufferline").setup{}
EOF

" set the leader key
let mapleader = ","

func! WordProcessorMode()

    setlocal textwidth=80

    setlocal smartindent
    setlocal spell spelllang=en_us
    setlocal noexpandtab
endfu
" some keybindings
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>]b :BufferLineCyclePrev<CR>

nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>

" mappings for telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

com! WP call WordProcessorMode()
colorscheme elly
au InsertLeave * colorscheme elly
au InsertEnter * colorscheme elly

" NERDTree bindings to make it fit how i want it
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd VimResized * wincmd =
lua <<EOF
require("nvim-autopairs").setup{}
EOF
" auto pairs is my bracket completion plugin
