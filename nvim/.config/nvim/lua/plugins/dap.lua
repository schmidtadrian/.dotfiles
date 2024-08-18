return {
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")
            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = function()
                dapui.open()
            end
            dap.listeners.after.event_terminated["dapui_config"] = function()
                dapui.close()
            end
            dap.listeners.after.event_exited["dapui_config"] = function()
                dapui.close()
            end
        end
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        event = "VeryLazy",
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        event = "VeryLazy",
        dependencies = {
            "williamboman/mason.nvim",
            "mfussenegger/nvim-dap",
        },
        opts = {
            handlers = {}
        },
    },
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            local count = 0
            -- for _ in pairs(dap.configurations) do count = count + 1 end
            -- print(count)
            -- dap.configurations.c.args = function()
            --     local args_string = vim.fn.input('Arguments: ')
            --     return vim.split(args_string, " +")
            -- end;
        end
    }
}
