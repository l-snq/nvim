return {
  {
    "nvim-treesitter/nvim-treesitter",
		branch = "master",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "javascript", "typescript" },
        highlight = { enable = true },
      })
    end,
  },
}
