return {
	"coder/claudecode.nvim",
	dependencies = { "folke/snacks.nvim" },
	cmd = {
		"ClaudeCode",
		"ClaudeCodeFocus",
		"ClaudeCodeSelectModel",
		"ClaudeCodeAdd",
		"ClaudeCodeSend",
		"ClaudeCodeTreeAdd",
		"ClaudeCodeStatus",
		"ClaudeCodeDiffAccept",
		"ClaudeCodeDiffDeny",
		"ClaudeCodeCloseAllDiffs",
	},
	keys = {
		{ "<leader>cc", "<cmd>ClaudeCode<CR>", desc = "Claude: toggle" },
		{ "<C-,>", "<cmd>ClaudeCode<CR>", mode = { "n", "t" }, desc = "Claude: toggle" },
		{ "<leader>cf", "<cmd>ClaudeCodeFocus<CR>", desc = "Claude: focus" },
		{ "<leader>co", "<cmd>ClaudeCode --continue<CR>", desc = "Claude: continue last session" },
		{ "<leader>cr", "<cmd>ClaudeCode --resume<CR>", desc = "Claude: resume (session picker)" },
		{ "<leader>cm", "<cmd>ClaudeCodeSelectModel<CR>", desc = "Claude: select model" },
		{ "<leader>ca", "<cmd>ClaudeCodeAdd %<CR>", desc = "Claude: add current file" },
		{ "<leader>ca", "<cmd>ClaudeCodeSend<CR>", mode = "x", desc = "Claude: send selection" },
		{ "<leader>ca", "<cmd>ClaudeCodeTreeAdd<CR>", ft = "oil", desc = "Claude: add file under cursor" },
		{ "<leader>cy", "<cmd>ClaudeCodeDiffAccept<CR>", desc = "Claude: accept diff" },
		{ "<leader>cn", "<cmd>ClaudeCodeDiffDeny<CR>", desc = "Claude: deny diff" },
	},
	opts = {
		terminal = {
			provider = "snacks",
			split_side = "right",
			split_width_percentage = 0.4,
			git_repo_cwd = true,
			snacks_win_opts = {
				keys = {
					-- <C-h/j/k/l> leave the Claude terminal, same as the wincmd maps in init.lua
					nav_h = { "<C-h>", "<C-\\><C-n><cmd>wincmd h<CR>", mode = "t" },
					nav_j = { "<C-j>", "<C-\\><C-n><cmd>wincmd j<CR>", mode = "t" },
					nav_k = { "<C-k>", "<C-\\><C-n><cmd>wincmd k<CR>", mode = "t" },
					nav_l = { "<C-l>", "<C-\\><C-n><cmd>wincmd l<CR>", mode = "t" },
					-- snacks maps double <Esc> to normal mode, which would eat Claude's Esc-Esc (rewind)
					term_normal = false,
				},
			},
		},
	},
}
