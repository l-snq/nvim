return {
	{'kevinhwang91/rnvimr',
	opts = {},
	config = function()
		vim.keymap.set("n", "<leader>rr", ":RnvimrToggle<CR>", { noremap = true, silent = true})
	end,
	}
}
