
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("n", "<leader>db", ":DapToggleBreakpoint<CR>", opts)
keymap("n", "<leader>dc", ":DapContinue<CR>", opts)
keymap("n", "<leader>di", ":DapStepInto<CR>", opts)
keymap("n", "<leader>do", ":DapStepOut<CR>", opts)
keymap("n", "<leader>dn", ":DapStepOver<CR>", opts)
keymap("n", "<leader>dr", ":lua require('dapui').open({reset = true})<CR>", opts)

-- local dap = require("dap")
-- local args = function()
--         local args_string = vim.fn.input('Arguments: ')
--         return vim.split(args_string, " +")
-- end;
--
-- for ft, configs in pairs(dap.configurations) do
--     for _, config in ipairs(configs) do
--         print(config)
--     end
-- end
