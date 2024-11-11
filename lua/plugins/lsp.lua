return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = false,
    init = function()
      -- Disable automatic setup, we are doing it manually
      vim.g.lsp_zero_extend_cmp = 0
      vim.g.lsp_zero_extend_lspconfig = 0
    end,
  },
  {
    'williamboman/mason.nvim',
    lazy = false,
    config = true,
  },

  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {'L3MON4D3/LuaSnip'},
    },
    config = function()
      -- Here is where you configure the autocompletion settings.
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_cmp()

      -- And you can configure cmp even more, if you want to.
      local cmp = require('cmp')
      local cmp_action = lsp_zero.cmp_action()

      cmp.setup({
      	  sources = {
	    {name = 'nvim_lsp'},
	  },
	  mapping = {
	    ['<CR>'] = cmp.mapping.confirm({select = false}),
	    ['<C-e>'] = cmp.mapping.abort(),
	    ['<C-k>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
	    ['<C-j>'] = cmp.mapping.select_next_item({behavior = 'select'}),
	    ['<C-p>'] = cmp.mapping(function()
	      if cmp.visible() then
		cmp.select_prev_item({behavior = 'insert'})
	      else
		cmp.complete()
	      end
	    end),
	    ['<C-n>'] = cmp.mapping(function()
	      if cmp.visible() then
		cmp.select_next_item({behavior = 'insert'})
	      else
		cmp.complete()
	      end
	    end),
	  },
	  snippet = {
	    expand = function(args)
	      require('luasnip').lsp_expand(args.body)
	    end,
	  },
      })
    end
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    cmd = {'LspInfo', 'LspInstall', 'LspStart'},
    event = {'BufReadPre', 'BufNewFile'},
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
      {'williamboman/mason-lspconfig.nvim'},
    },
    config = function()
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_lspconfig()

        lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({buffer = bufnr})
      end)

      require('mason-lspconfig').setup({
        ensure_installed = {'ts_ls', 'rust_analyzer', 'cssls', 'eslint'},
        handlers = {
          lsp_zero.default_setup,
          lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
          end,
        }
      })
    end
  }
}
