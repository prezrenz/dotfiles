return {
    { 
        "rcarriga/nvim-dap-ui", 
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
        config = function()
            require("dapui").setup()
            local dap, dapui = require("dap"), require("dapui")
            dap.listeners.before.attach.dapui_config = function()
              dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
              dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
              dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
              dapui.close()
            end

            function breakpointConditional()
                vim.ui.input({prompt = "Condition: "}, function(input) require'dap'.toggle_breakpoint(cond) end)
            end

            function dapUITerminate()
                require'dap'.terminate()
                require'dapui'.close()
            end

            vim.keymap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>");
            vim.keymap.set("n", "<leader>de", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>");
            vim.keymap.set("n", "<leader>dd", "<cmd>lua require'dap'.step_into()<CR>");
            vim.keymap.set("n", "<leader>ds", "<cmd>lua require'dap'.step_over()<CR>");
            vim.keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.continue()<CR>");
            vim.keymap.set("n", "<leader>dc", dapUITerminate);
        end
    },
    {
        'theHamsta/nvim-dap-virtual-text',
        config = function()
            require("nvim-dap-virtual-text").setup()
            vim.api.nvim_set_hl(0, 'DapStopped', { fg = "NONE", bg = "#A9A9A9" })
            vim.fn.sign_define('DapBreakpoint', {text='🔴', texthl='', linehl='', numhl=''})
            vim.fn.sign_define('DapBreakpointCondition', {text='⛔', texthl='', linehl='', numhl=''})
            vim.fn.sign_define('DapStopped', {text='🔴', texthl='DapStopped', linehl='DapStopped', numhl='DapStopped'})
        end
    },
    {
        "folke/trouble.nvim",
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = "Trouble",
        keys = {
            {
                "<leader>pd",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
        },
    },
}
