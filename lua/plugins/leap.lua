return {
	{"ggandor/leap.nvim",
	opts = {},
	config = function ()
		require('leap').create_default_mappings()
	end,
	}
}
