require'lspconfig'.lua_ls.setup {
settings = {
  Lua = {
    diagnostics = {
      globals = { 'vim' }
      }
    }
  }
}
-- autcmd for glsl plugin to read .wgsl files for syntax highlights
vim.cmd[[
  autocmd! BufNewFile, BufRead *.vs, *.fs, *.wgsl set ft=glsl
]]
-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- set cursor columns and lines
vim.o.cursorcolumn = true;
vim.o.cursorline = true;

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

vim.o.relativenumber = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ','
vim.g.maplocalleader = ', '

vim.cmd[[set wrap linebreak]]

vim.diagnostic.config({
  float = {
    source = 'always',
    border = border
  },
})
