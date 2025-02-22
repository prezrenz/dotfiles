return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        -- telescope.nvim settings

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pv', builtin.find_files, {})
        vim.keymap.set('n', '<leader>pb', builtin.buffers, {})

        require("telescope").load_extension("noice")
        vim.keymap.set('n', '<leader>ph', "<CMD>Telescope noice<CR>")

        vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions)
        vim.keymap.set('n', '<leader>fr', builtin.lsp_references)
    end
}
