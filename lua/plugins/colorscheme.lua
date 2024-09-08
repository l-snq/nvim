return {
	{"junegunn/seoul256.vim"},
	{
		"agude/vim-eldar",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
		   -- load the colorscheme here
		   vim.cmd([[colorscheme chlordane]])
		end,
	},
	{"vim-scripts/chlordane.vim"},
}
