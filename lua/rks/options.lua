-- Shorthand
local opt = vim.opt

-- Number
opt.number = true
opt.relativenumber = true

-- Line Wrap
opt.wrap = false

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true

opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Cursor
opt.cursorline = true

-- True Colors
opt.termguicolors = true

-- Backup
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- Disable Highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Scroll
opt.scrolloff = 10

-- Updatetime
opt.updatetime = 100

-- Color column
opt.colorcolumn = "80"

-- Sign Column
opt.signcolumn = "yes"
