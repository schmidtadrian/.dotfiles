-- local lspconfig = require('lspconfig')
-- local lsp_defaults = lspconfig.util.default_config
--
-- lsp_defaults.capabilities = vim.tbl_deep_extend(
--     'force',
--     lsp_defaults.capabilities,
--     require('cmp_nvim_lsp').default_capabilities()
-- )

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        local opts = function(desc)
            return { buffer = event.buf, desc = desc }
        end

        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts())
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts('[G]o to [D]efinition'))
        vim.keymap.set('n', 'gv', '<cmd>vsplit<cr><cmd>lua vim.lsp.buf.definition()<cr>', opts('[G]o to [D]efinition'))
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts('[G]o to [D]eclaration'))
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts('[G]o to [I]mplementation'))
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts('[G]o to type definition'))
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts('[G]o to [R]eferences'))
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts('[G]o to [S]ignature help'))
        vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts())
        vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts('[R]e[N]ame'))
        vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts())
        vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts('[C]ode [A]ction'))

        vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts())
        vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts())
        vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts())
        vim.keymap.set('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts('[D]iagnostic [N]ext'))
        vim.keymap.set('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts('[D]iagnostic [P]revious'))
    end
})
