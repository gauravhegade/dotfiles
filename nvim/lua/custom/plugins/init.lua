return {
	{ "mbbill/undotree", vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle) },
	{ -- for matching bracket pairs
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				view = {
					side = "right",
				},
			})
			vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
		end,
	},
	{
		"eandrju/cellular-automaton.nvim",
		vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>"),
	},
}
