return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                highlight_groups = {
                    CursorLineNr = {
                        fg = "gold",
                        bold = false,
                    },
                },
            })

            vim.cmd.colorscheme("rose-pine")
        end
    }
}
