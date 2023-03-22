require('packer').startup(function(use)
  use 'rose-pine/neovim'
  use 'junegunn/seoul256.vim'
  use 'franbach/miramare'
  use 'sainnhe/everforest'
  use 'slugbyte/yuejiu'
  use 'srcery-colors/srcery-vim'
  use {'olivercederborg/poimandres.nvim',
  config = function()
    require('poimandres').setup {}end}

end)

vim.o.termguicolors = true
vim.g.miramare_transparent_background = true
vim.g.miramare_enable_italic_string = true

vim.cmd [[colorscheme miramare]]

