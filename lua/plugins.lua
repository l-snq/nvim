local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbhtomason/packer.nvim', install_path})
		vim.cmd[[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_boostrap = ensure_packer()

return require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  use { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    requires = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',

      -- Additional lua configuration, makes nvim stuff amazing
      'folke/neodev.nvim',
    },
  }
  -- leap for better navigation
  use 'ggandor/leap.nvim'

  -- glsl/wgsl syntax highlighting
  use 'tikhomirov/vim-glsl'

  use 'evanleck/vim-svelte'

--  use 'alvan/vim-closetag'
  use 'windwp/nvim-ts-autotag'

  use 'norcalli/nvim-colorizer.lua'

  use 'simrat39/rust-tools.nvim'

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }

  -- debugging
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'
  use {'rcarriga/nvim-dap-ui', requires = {"mfussenegger/nvim-dap"}}
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'

  use {'neoclide/coc.nvim', branch = 'release'}

  use { -- Autocompletion
    'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  }

  -- for transparency:
  use 'tribela/vim-transparent'

  -- colors
  use 'marcopaganini/mojave-vim-theme'
  use 'jnurmine/Zenburn'
  use 'novasenco/vulpo'
  use 'lvim-tech/lvim-colorscheme'
  use 'cideM/yui'
  use 'rose-pine/neovim'
  use 'junegunn/seoul256.vim'
  use 'franbach/miramare'
  use 'sainnhe/everforest'
  use {'olivercederborg/poimandres.nvim',
    config = function()
      require('poimandres').setup {}end}
  use "daschw/leaf.nvim"

  use { 'nvim-tree/nvim-tree.lua'}
  use { -- webdev icons 

    'nvim-tree/nvim-web-devicons'
  }

  use {
    "folke/trouble.nvim", 
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
    require("trouble").setup {
      }
    end
  }

  use { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

  use { -- Additional text objects via treesitter
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }

  -- markdown previewer
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({"iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" },})

  -- Git related plugins
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'lewis6991/gitsigns.nvim'

  use 'nvim-lualine/lualine.nvim'
  use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically
  use {'akinsho/bufferline.nvim', tag = 'v3.*', requries = 'nvim-tree/nvim-web-devicons'}

  -- Fuzzy Finder (files, lsp, etc)
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
      -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'BurntSushi/ripgrep'
  use 'sharkdp/fd'

  -- Add custom plugins to packer from ~/.config/nvim/lua/custom/plugins.lua
  local has_plugins, plugins = pcall(require, 'custom.plugins')
  if has_plugins then
    plugins(use)
  end

  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- When we are bootstrapping a configuration, it doesn't
-- make sense to execute the rest of the init.lua.
--
-- You'll need to restart nvim, and then it will work.

-- Automatically source and re-compile packer whenever you save this init.lua
--local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
--vim.api.nvim_create_autocmd('BufWritePost', {
 -- command = 'source <afile> | silent! LspStop | silent! LspStart | PackerCompile',
  --group = packer_group,
--  pattern = vim.fn.expand '$MYVIMRC',
--})
