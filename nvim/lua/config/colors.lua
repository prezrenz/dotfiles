-- Color settings
vim.opt.background = "dark"
if not vim.fn.has("gui_running") then -- In GUI
	vim.cmd("colorscheme chocolatier")
else -- In terminal
	vim.cmd("colorscheme chocolatier")
	vim.cmd("hi Normal ctermbg=NONE guibg=NONE")
	vim.cmd("hi SignColumn ctermbg=NONE guibg=NONE")
	vim.cmd("hi ColorColumn ctermbg=NONE guibg=NONE")
end
