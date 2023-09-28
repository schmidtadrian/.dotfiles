return {
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup({
                on_attach = function(bufnr)
                    local gs = package.loaded.gitsigns

                    local function map(mode, l, r, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        vim.keymap.set(mode, l, r, opts)
                    end

                    -- Navigation
                    map('n', ']c', function()
                        if vim.wo.diff then return ']c' end
                        vim.schedule(function() gs.next_hunk() end)
                        return '<Ignore>'
                    end, { expr = true })

                    map('n', '[c', function()
                        if vim.wo.diff then return '[c' end
                        vim.schedule(function() gs.prev_hunk() end)
                        return '<Ignore>'
                    end, { expr = true })

                    -- Actions
                    map('n', '<leader>hs', gs.stage_hunk, { desc = '[H]istory [S]tage hunk'})
                    map('n', '<leader>hr', gs.reset_hunk, { desc = '[H]istory [R]eset hunk'})
                    map('v', '<leader>hs', function() gs.stage_hunk { vim.fn.line('.'), vim.fn.line('v') } end, { desc = '[H]istory [S]tage hunk'})
                    map('v', '<leader>hr', function() gs.reset_hunk { vim.fn.line('.'), vim.fn.line('v') } end, { desc = '[H]istory [R]eset hunk'})
                    map('n', '<leader>hS', gs.stage_buffer, { desc = '[H]istory [S]tage buffer'})
                    map('n', '<leader>hu', gs.undo_stage_hunk, { desc = '[H]istory [U]ndo buffer'})
                    map('n', '<leader>hR', gs.reset_buffer, { desc = '[H]istory [R]eset buffer'})
                    map('n', '<leader>hp', gs.preview_hunk, { desc = '[H]istory [P]review hunk'})
                    map('n', '<leader>hB', function() gs.blame_line { full = true } end, { desc = '[H]istory [B]lame line'})
                    map('n', '<leader>hb', gs.toggle_current_line_blame, { desc = '[H]istory [B]lame current line'})
                    map('n', '<leader>hd', gs.diffthis, { desc = '[H]istory [D]iff this'})
                    map('n', '<leader>hD', function() gs.diffthis('~') end, { desc = '[H]istory [D]iff this'})
                    -- map('n', '<leader>td', gs.toggle_deleted)

                    -- Text object
                    map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
                end

            })
        end
    },
}
