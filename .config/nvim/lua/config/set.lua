vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 8
vim.opt.isfname:append('@-@')

vim.opt.colorcolumn = '120'

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Decrease update time
vim.opt.updatetime = 50
vim.opt.signcolumn = 'yes'

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'

-- Set highlight on search
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.list = true
vim.opt.listchars:append 'space:⋅'

vim.opt.spelllang = 'en_us'
vim.opt.spell = true
vim.opt.spelloptions = 'camel'

-- To ALWAYS use the clipboard for ALL operations (instead of interacting
-- with the "+" and/or "*" registers explicitly)
vim.opt.clipboard = 'unnamedplus'

vim.opt.termguicolors = true

vim.opt.cursorline = true
vim.opt.cursorlineopt = 'both'

-- Set the default border for all floating windows
vim.opt.winborder = 'rounded'
