local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.g.mapleader = ","
vim.keymap.set('n', '<leader>zz', ':write<CR>', {})
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', {})
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', {})
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', {})
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', {})

--[[
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

]]
require("lazy").setup("plugins")
