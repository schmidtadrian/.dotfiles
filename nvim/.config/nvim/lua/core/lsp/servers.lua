local lspconfig = require('lspconfig')
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        -- Replace these with whatever servers you want to install
        'rust_analyzer',
        'tsserver',
        'bashls',
        'clangd',
        -- 'eslint',
        'lua_ls'
    }
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason-lspconfig').setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            capabilities = lsp_capabilities
        })
    end,
})
