return {
	"ggandor/leap.nvim",
	opts = {},
	config = function ()
    require('leap').leap { backward = true }
	end,
}
