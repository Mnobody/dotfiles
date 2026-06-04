-- See https://gpanders.com/blog/whats-new-in-neovim-0-11/

-- This just enables the lsp servers.
-- The configuration is found in the lsp folder inside the nvim config folder,
-- so in ~/.config/nvim/lsp/lua.lua for lua, for example.
vim.lsp.enable({
    'lua',
    'ts'
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
        if client:supports_method('textDocument/completion') then
            vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'popup', 'fuzzy' }
            -- use i_CTRL-X_CTRL-O to manually trigger completion
            -- use CTRL-N - next option, CTRL-P - previous option
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end

        -- Auto-format ("lint") on save.
        -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
        if not client:supports_method('textDocument/willSaveWaitUntil')
            and client:supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
                group = vim.api.nvim_create_augroup('neovim.lsp', { clear = false }),
                buffer = ev.buf,
                callback = function()
                    vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
                end,
            })
        end
    end,
})

-- Debug lsp
-- vim.lsp.log.set_level 'trace'
-- require('vim.lsp.log').set_format_func(vim.inspect)
