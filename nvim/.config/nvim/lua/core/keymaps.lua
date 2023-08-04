-- move highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- delete/paste without cutting (cutting to blackhole register)
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({"n", "x"}, "<leader>d", "\"_d")
vim.keymap.set({"n", "x"}, "<leader>c", "\"_c")

-- shorthand for yank/paste to/from system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")

-- search & replace for the current word under buffer
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

