require 'lspconfig'.rust_analyzer.setup {
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            }
        }
    }
}
