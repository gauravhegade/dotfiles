vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- remap j and k for smooth navigation
vim.keymap.set({ "n", "x" }, "j", function()
	return vim.v.count > 0 and "j" or "gj"
end, { noremap = true, expr = true, desc = "Move down (or by display line if no count)" })

vim.keymap.set({ "n", "x" }, "k", function()
	return vim.v.count > 0 and "k" or "gk"
end, { noremap = true, expr = true, desc = "Move up (or by display line if no count)" })

-- move lines up and down normal mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", noremap = true, silent = true })

-- move lines up and down insert mode
vim.keymap.set(
	"i",
	"<A-j>",
	"<Esc>:m .+1<CR>==gi",
	{ desc = "Move line down and return to insert mode", noremap = true, silent = true }
)
vim.keymap.set(
	"i",
	"<A-k>",
	"<Esc>:m .-2<CR>==gi",
	{ desc = "Move line up and return to insert mode", noremap = true, silent = true }
)

-- move lines up and down visual mode
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up", noremap = true, silent = true })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down", noremap = true, silent = true })

-- Disable the space bar key default behavior
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true, desc = "Disable default space behavior" })

-- for yanking into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard", noremap = true, silent = true })
vim.keymap.set(
	"n",
	"<leader>Y",
	[["+Y]],
	{ desc = "Yank whole line to system clipboard", noremap = true, silent = true }
)

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights", noremap = true, silent = true })

-- save file using Ctrl-S
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save current file", noremap = true, silent = true })

-- save file without formatting
vim.keymap.set(
	"n",
	"<leader>sn",
	"<cmd>noautocmd w<CR>",
	{ desc = "Save file without auto commands", noremap = true, silent = true }
)

-- quit file
vim.keymap.set("n", "<C-w>", "<cmd>bd<CR>", { desc = "Close current buffer", noremap = true, silent = true })

-- delete single character without copying into register
vim.keymap.set("n", "x", "_x", { desc = "Delete character without yanking", noremap = true, silent = true })

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center cursor", noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center cursor", noremap = true, silent = true })

-- Find and center
vim.keymap.set("n", "n", "nzzzv", { desc = "Find next and center", noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Find previous and center", noremap = true, silent = true })

-- Toggle line wrapping
vim.keymap.set(
	"n",
	"<leader>lw",
	"<cmd>set wrap!<CR>",
	{ desc = "Toggle line wrapping", noremap = true, silent = true }
)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Stay in indent mode when decreasing indent", noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { desc = "Stay in indent mode when increasing indent", noremap = true, silent = true })

-- quit file with Ctrl-Q
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", { desc = "Quit current file", noremap = true, silent = true })

-- Resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", { desc = "Resize window up", noremap = true, silent = true })
vim.keymap.set("n", "<Down>", ":resize +2<CR>", { desc = "Resize window down", noremap = true, silent = true })
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", { desc = "Resize window left", noremap = true, silent = true })
vim.keymap.set(
	"n",
	"<Right>",
	":vertical resize +2<CR>",
	{ desc = "Resize window right", noremap = true, silent = true }
)

-- Buffers
vim.keymap.set("n", "<C-Tab>", ":bnext<CR>", { desc = "Go to next buffer", noremap = true, silent = true })
vim.keymap.set("n", "<C-S-Tab>", ":bprevious<CR>", { desc = "Go to previous buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", { desc = "Close current buffer", noremap = true, silent = true })
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", { desc = "Open new buffer", noremap = true, silent = true })

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically", noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split window horizontally", noremap = true, silent = true })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize split window sizes", noremap = true, silent = true })
vim.keymap.set("n", "<leader>xs", ":close<CR>", { desc = "Close current split window", noremap = true, silent = true })

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Navigate to the split above", noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Navigate to the split below", noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = "Navigate to the split left", noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Navigate to the split right", noremap = true, silent = true })

-- Tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab", noremap = true, silent = true })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab", noremap = true, silent = true })
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab", noremap = true, silent = true })
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab", noremap = true, silent = true })

-- prevent overriding register when pasting over something
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without overriding register", noremap = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
