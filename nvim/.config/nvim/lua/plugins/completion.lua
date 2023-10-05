return {
    "hrsh7th/nvim-cmp",     -- completion plugin
    "hrsh7th/cmp-buffer",   -- buffer completion
    "hrsh7th/cmp-path",     -- path completion
    "hrsh7th/cmp-cmdline",  -- cmdline completion
    "hrsh7th/cmp-nvim-lsp", -- nvim built-in language server
    "onsails/lspkind.nvim", -- completion menu icons
    {
        "ray-x/lsp_signature.nvim", -- automatically show fn signature in insert mode
        -- event = "VeryLazy",
        opts = {
            hint_enable = false, -- disable ugly panda
            handler_opts = {
                border = "none" -- double, rounded, single, shadow, none, or a table of borders
            },
            toggle_key = "<M-s>"
        },
        config = function(_, opts) require 'lsp_signature'.setup(opts) end
    }
}
