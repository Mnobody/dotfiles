require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = {     -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false,    -- shows the '~' characters after the end of buffers
    term_colors = false,           -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false,           -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15,         -- percentage of the shade to apply to the inactive window
    },
    no_italic = true,              -- Force no italic
    no_bold = true,                -- Force no bold
    no_underline = false,          -- Force no underline
    styles = {                     -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = {},             -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

vim.cmd [[colorscheme catppuccin-mocha]]

vim.o.termguicolors = true

vim.opt.cursorline = true
vim.opt.cursorlineopt = 'line'

vim.cmd("hi ColorColumn guibg=#2a2b3c")
vim.cmd("hi CursorLine guibg=#313240")
vim.cmd("hi Pmenu guibg=#303030")

vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#f9e2af' })
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#ffff76' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#f9e2af' })

-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#303030' })

vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = '#cdd6f4' })
