return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		-- telescope.nvim settings

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pv", builtin.find_files, {})
		vim.keymap.set("n", "<leader>pb", builtin.buffers, {})

		vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions)
		vim.keymap.set("n", "<leader>fr", builtin.lsp_references)

		vim.keymap.set("n", "<leader>ff", builtin.lsp_dynamic_workspace_symbols)
	end,
}
