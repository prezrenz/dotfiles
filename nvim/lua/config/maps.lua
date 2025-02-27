vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

-- Remaps

vim.keymap.set("n", "<F12>", "<cmd>edit $MYVIMRC<cr>")

-- vim.keymap.set("n", "<leader>pf", "<cmd>Ex<cr>")
vim.keymap.set("n", "<leader>pf", "<cmd>Oil<cr>") -- The above uses netrw, this is for oil.nvim

vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>")

vim.keymap.set("n", "<C-Right>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<C-Left>", "<cmd>BufferLineCyclePrev<CR>")

-- Needs a justfile and just build system https://github.com/casey/just
-- Will run the default all: recipe
vim.keymap.set('n', "<leader>pr", "<cmd>!just<CR>")

-- remap to not replace clipboard when pasting
vim.keymap.set("x", "p", function() return 'pgv"' .. vim.v.register .. "y" end, { remap = false, expr = true })
-- remap to select all
vim.keymap.set("n", "<C-a>", "gg<S-v>GG<CR>")

vim.keymap.set("n", "<A-j>", "<C-w><Up>")
vim.keymap.set("n", "<A-k>", "<C-w><Down>")
vim.keymap.set("n", "<A-h>", "<C-w><Left>")
vim.keymap.set("n", "<A-l>", "<C-w><Right>")

-- Git remaps
vim.keymap.set("n", "<leader>gg", "<cmd>Git<CR>")
vim.keymap.set("n", "<leader>gp", "<cmd>Git push<CR>")

-- Obsidian.nvim remaps
vim.keymap.set('n', '<leader>pi', '<CMD>ObsidianPasteImg')
