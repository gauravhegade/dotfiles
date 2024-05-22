--- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Centers cursor when moving 1/2 page down
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"

-- Centers cursor when moving 1/2 page up
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"

-- Adds a custom shortcut to telescope livegrep
lvim.keys.normal_mode["<leader>fg"] = "<cmd>Telescope live_grep<cr>"
lvim.keys.normal_mode["<leader>ff"] = "<cmd>Telescope find_files<cr>"

-- Set relative line numbers
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.textwidth = 80

lvim.plugins = {
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }
}

lvim.colorscheme = "tokyonight-night"
lvim.builtin.nvimtree.setup.view.side = "right"

-- custom keymaps
vim.keymap.set({ "n", "x" }, "j", function()
	return vim.v.count > 0 and "j" or "gj"
end, { noremap = true, expr = true })

vim.keymap.set({ "n", "x" }, "k", function()
	return vim.v.count > 0 and "k" or "gk"
end, { noremap = true, expr = true })
