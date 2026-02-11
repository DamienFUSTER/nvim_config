return {
	"nvim-treesitter/nvim-treesitter",
	lazy= false,
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = { "lua", "python", "markdown", "bash"},
    highlight = { enable = true },
  },
}
