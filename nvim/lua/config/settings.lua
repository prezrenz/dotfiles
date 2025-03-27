-- Editor settings

vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.autowriteall = true
vim.opt.clipboard = "unnamedplus"
vim.opt.linebreak = true
vim.opt.relativenumber = true
vim.opt.conceallevel = 1

vim.opt.incsearch = true
vim.cmd("nohlsearch")
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 9999
vim.opt.splitright = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.diagnostic.config({
	virtual_text = false, -- Turn off inline diagnostics
})
