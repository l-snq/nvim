
local rt = require("rust-tools")
rt.setup({
    server = {
      on_attach = function(_, bufnr)
      -- hover actions
        vim.keymap.set("n", "<leader>a", rt.hover_actions.hover_actions, { buffer = bufnr })
        vim.keymap.set("n", "<leader>d", rt.code_action_group.code_action_group, { buffer = bufnr })
      end,
  },
})

-- LEAP NVIM 
require('leap').add_default_mappings()

-- nvim-ts-autotag setup
require('nvim-ts-autotag').setup()
-- colorizer for hex codes

require'colorizer'.setup()
require("bufferline").setup({
    options = {
      separator_style = "slope" ,
      buffer_close_icon = "",
      always_show_bufferline = true,
      show_buffer_close_icon = false,
      show_close_icon = false,
      color_icons = true,
    },
  
    -- highlights = {
    --   separator = {
    --     fg = '#242021',
    --     bg = '#2a2426',
    --   },
    --   separator_selected = {
    --     fg = '#242021',
    --     bg = '#3c3638',
    --   },
    --   separator_visible = {
    --     fg = '#242021',
    --     bg = '#3c3638',
    --   },
    --   background = {
    --     fg = '#d9bb80',
    --     bg = '#2a2426'
    --   },
    --   buffer_selected = {
    --     fg = '#fdf6e3',
    --     bg = '#3c3638',
    --     bold = true,
    --   },
    --   buffer_visible = {
    --     fg = '#fdf6e3',
    --     bg = '#3c3638',
    --     bold = true,
    --   },
    --
    --   fill = {
    --     bg = '#242021'
    --   },
    --   close_button_selected = {
    --     bg = '#3c3638'
    --   },
    --   close_button_visible = {
    --   bg = '#3c3638'
    --   },
    --   close_button = {
    --     bg = '#2a2426'
    --   },
    --   modified_visible = {
    --     bg = '#2a2426',
    --   },
    --   modified_selected = {
    --     bg = '#3c3638'
    --   },
    -- },
})

require('nvim-tree').setup()

local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
require('lualine').setup{
  options= {
    theme = 'auto',
  }
}
require('lualine').get_config()

--vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
-- cut HERE

--dap require stuff here
local dap = require('dap')
dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = '../../Downloads/lldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

dap.configurations.rust = {
  {
 name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}


-- dap ui
require('dapui').setup()


-- Enable Comment.nvim
require('Comment').setup()

-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
-- require('indent_blankline').setup {
-- }

-- Gitsigns
-- See `:help gitsigns.txt`
require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}

-- [[ Configure Telescope ]]
-- See `:help telescope` and `:help telescope.setup()`
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
    file_ignore_patterns = {
      "node_modules",
      "target"
    }
  },
}

-- Enable telescope fzf native, if installed
--pcall(require('telescope').load_extension, 'fzf')
-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter`
require('nvim-treesitter.configs').setup {
  -- Add languages to be installed here that you want installed for treesitter
  ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'typescript', 'svelte', 'vim' },
  highlight = { enable = true },
  indent = { enable = true, disable = { 'python' } },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = '<c-s>',
      node_decremental = '<c-backspace>',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer',
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ['<leader>a'] = '@parameter.inner',
      },
      swap_previous = {
        ['<leader>A'] = '@parameter.inner',
      },
    },
  },
}

local servers = {
   clangd = {},
   rust_analyzer = {},
   tsserver = {},
   svelte = {},
   wgsl_analyzer = {},

   -- sumneko_lua = {
    --Lua = {
     -- workspace = { checkThirdParty = false },
      --telemetry = { enable = false },
   -- },
 -- },
}

-- Setup neovim lua configuration
require('neodev').setup({
library = { plugins = { "nvim-dap-ui"}, types = true},
})
--
-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Setup mason so it can manage external tooling
require('mason').setup()

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
  function(server_name)
    require('lspconfig')[server_name].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      settings = servers[server_name],
    }
  end,
}

-- set up so that wgsl files are read for syntax
vim.cmd[[
  au BufNewFile,BufRead *.wgsl set filetype=wgsl
]]

-- Turn on lsp status information
require('fidget').setup()

-- nvim-cmp setup
local cmp = require 'cmp'
local luasnip = require 'luasnip'


-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
