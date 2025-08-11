return {
    'tribela/transparent.nvim',
    event = 'VimEnter',
		auto = true,
    config = function() 
			vim.keymap.set('n', '<leader>tr', ':TransparentToggle<CR>', {})
		end,
}
