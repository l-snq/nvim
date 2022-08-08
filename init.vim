set nocompatible


call plug#begin()
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'akinsho/bufferline.nvim'
    Plug 'preservim/nerdtree'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'BurntSushi/ripgrep'
    Plug 'windwp/nvim-autopairs'

    " color themes
    Plug 'franbach/miramare'
    Plug 'ulwlu/elly.vim'
    Plug 'ntk148v/komau.vim' 
    Plug 'AxolotlC/Fox'
    Plug 'habamax/vim-habamax'
    Plug 'axvr/raider.vim'
    Plug 'szorfein/fantasy.vim'
    Plug 'xiaody/thornbird.vim'
    Plug 'CreaturePhil/vim-handmade-hero'
    "coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    "lang support
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/lsp_extensions.nvim'
    Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}
    Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}
    Plug 'hrsh7th/cmp-path', {'branch': 'main'}
    Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}
    Plug 'ray-x/lsp_signature.nvim'

    Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}
    Plug 'hrsh7th/vim-vsnip'
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'styled-components/vim-styled-components'
    Plug 'cespare/vim-toml'
    Plug 'rust-lang/rust.vim'
    Plug 'simrat39/rust-tools.nvim'
    Plug 'plasticboy/vim-markdown'
    Plug 'tikhomirov/vim-glsl'
    Plug 'mfussenegger/nvim-dap'
call plug#end()

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number 
set termguicolors
set splitright
set autochdir

colorscheme fantasy 

let g:coc_global_extensions = [
            \ 'coc-tsserver',
            \ 'coc-prettier',
            \ 'coc-eslint'
            \]

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
" nerd tree mappings
nnoremap <silent><leader>n :NERDTreeToggle<CR>
" mappings for telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" bindings for coc.nvim
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" NERDTree bindings to make it fit how i want it
autocmd StdinReadPre * let s:std_in=1
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd VimResized * wincmd =
lua <<EOF
require("nvim-autopairs").setup{}
EOF
" auto pairs is my bracket completion plugin