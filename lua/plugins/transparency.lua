return {
	"tribela/vim-transparent",
	opts = {},
	config = function ()
		vim.keymap.set('n', '<leader>tr', ':TransparentToggle<CR>', { noremap = true, silent = true})
	end,

}
