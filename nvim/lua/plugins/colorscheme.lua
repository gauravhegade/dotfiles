return {
	"folke/tokyonight.nvim",
	lazy = false,
	name = "tokyonight",
	priority = 1000,
	opts = {},
	config = function()
		require("tokyonight").setup({
			transparent = true,
			styles = {
				sidebars = "transparent",
			},
		})
		vim.cmd("colorscheme tokyonight-night")
	end,
}
