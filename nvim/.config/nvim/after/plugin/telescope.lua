local builtin = require('telescope.builtin')

-- files & buffers
vim.keymap.set('n', '<leader>ff', builtin.find_files, 	{ desc = '[F]ind [F]iles'})
vim.keymap.set('n', '<leader>fp', builtin.git_files, 	{ desc = '[F]ind [P]roject files (git)'})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, 	{ desc = '[F]ind [R]ecent files'})
vim.keymap.set('n', '<leader>fb', builtin.buffers, 	{ desc = '[F]ind [B]uffers'})

-- fuzzy find
vim.keymap.set('n', '<leader>fc', builtin.current_buffer_fuzzy_find, 	{ desc = '[F]ind [C]urrent buffer'})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, 	{ desc = '[F]ind [W]ord'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, 	{ desc = '[F]ind by [G]rep'})

-- convinience
vim.keymap.set('n', '<leader>fh', builtin.help_tags, 	{ desc = '[F]ind [H]elp'})
vim.keymap.set('n', '<leader>fk', builtin.keymaps, 	{ desc = '[F]ind [K]eymaps'})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, 	{ desc = '[F]ind [D]iagnostics'})

-- workspace symbols (lowercase)
vim.keymap.set('n', '<leader>fsa', builtin.lsp_workspace_symbols, 	{ desc = '[F]ind [S]ymbols [A]ll'})
vim.keymap.set('n', '<leader>fsv', function () builtin.lsp_workspace_symbols({symbols={'variable', 'field'}}) end, 	{ desc = '[F]ind [S]ymbols [V]ariables'})
vim.keymap.set('n', '<leader>fsm', function () builtin.lsp_workspace_symbols({symbols={'method', 'function'}}) end, 	{ desc = '[F]ind [S]ymbols [M]ethod'})
vim.keymap.set('n', '<leader>fsc', function () builtin.lsp_workspace_symbols({symbols={'class'}}) end, 	{ desc = '[F]ind [S]ymbols [C]lass'})

-- document symbols (uppercase)
vim.keymap.set('n', '<leader>fsA', builtin.lsp_document_symbols, 	{ desc = '[F]ind [S]ymbols [A]ll'})
vim.keymap.set('n', '<leader>fsV', function () builtin.lsp_document_symbols({symbols={'variable', 'field'}}) end, 	{ desc = '[F]ind [S]ymbols [V]ariables'})
vim.keymap.set('n', '<leader>fsM', function () builtin.lsp_document_symbols({symbols={'method', 'function'}}) end, 	{ desc = '[F]ind [S]ymbols [M]ethod'})
vim.keymap.set('n', '<leader>fsC', function () builtin.lsp_document_symbols({symbols={'class'}}) end, 	{ desc = '[F]ind [S]ymbols [C]lass'})
