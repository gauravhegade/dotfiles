-- any vim options go here
vim.wo.number = true
vim.o.relativenumber = true

vim.o.wrap = false
vim.o.linebreak = true
vim.o.textwidth = 80
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.autoindent = true
vim.o.smartindent = true
vim.o.breakindent = true

vim.o.termguicolors = true

vim.o.colorcolumn = "80"
vim.wo.signcolumn = "yes"

vim.o.mouse = "a"

vim.o.showmode = false

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.updatetime = 250
vim.o.timeoutlen = 500

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.inccommand = "split"

vim.o.cursorline = true
vim.o.scrolloff = 10

vim.o.swapfile = false

vim.o.showtabline = 2
vim.o.backspace = "indent,eol,start"

vim.o.fileencoding = "utf-8"

vim.o.mousemoveevent = true

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
