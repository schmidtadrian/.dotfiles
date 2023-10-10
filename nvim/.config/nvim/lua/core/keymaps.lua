-- move highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- delete/paste without cutting (cutting to blackhole register)
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({ "n", "x" }, "<leader>d", "\"_d")
vim.keymap.set({ "n", "x" }, "<leader>c", "\"_c")


-- shorthand for yank/paste to/from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")
vim.keymap.set({ "n", "v" }, "<leader>p", "\"+p")


-- search & replace for the current word under buffer
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])


-- quickfix
local function toggle_quickfix()
    local qf_exists = false
    for _, win in pairs(vim.fn.getwininfo()) do
        if win["quickfix"] == 1 then
            qf_exists = true
        end
    end
    if qf_exists == true then
      vim.cmd "cclose"
      return
    end
    if not vim.tbl_isempty(vim.fn.getqflist()) then
      vim.cmd "copen"
    end
end

vim.keymap.set('n', '<leader>qq', toggle_quickfix, { desc = 'Toggle Quickfix' })
vim.keymap.set('n', ']q', ':cn<CR>', { desc = 'Go to next quickfix' })
vim.keymap.set('n', '[q', ':cp<CR>', { desc = 'Go to prev quickfix' })
vim.keymap.set('n', ']Q', ':cnf<CR>', { desc = 'Go to first quickfix in next file' })
vim.keymap.set('n', '[Q', ':cpf<CR>', { desc = ' Go to last quickfix in prev file' })
