-- Set lualine as statusline
-- See `:help lualine.txt`

local colors = {
  background = '#262833',

  -- catppuccin
  crust = '#11111b',
  white = '#f3f3f3',
  surface1 = '#45475a',
  red = '#f38ba8',
  sky = '#89dceb',
  green = '#a6e3a1',
  peach = '#fab387',
  maroon = '#eba0ac',
  yellow = '#f9e2af',
  rosewater = '#f5e0dc',
  pink = '#f5c2e7',
}

local theme = {
  normal = {
    a = { fg = colors.crust, bg = colors.sky },
    b = { fg = colors.white, bg = colors.surface1 },
    c = { fg = colors.white, bg = colors.background },
    z = { fg = colors.crust, bg = colors.sky },
  },
  insert = {
    a = { fg = colors.crust, bg = colors.green },
    c = { fg = colors.crust, bg = colors.rosewater },
  },
  visual = {
    a = { fg = colors.crust, bg = colors.pink },
  },
  replace = {
    a = { fg = colors.crust, bg = colors.red }
  },
  command = {
    a = { fg = colors.crust, bg = colors.yellow }
  },
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = theme,
    --theme = 'auto',
    --theme = 'powerline',
    --theme = 'nord',
    --theme = 'dracula',
    --theme = 'onedark',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
