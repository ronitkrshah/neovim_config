-- Editor Options

local opt = vim.opt

-- number
opt.number = true
opt.relativenumber = true

-- line wrap
opt.wrap = false

-- indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- cursor
opt.cursorline = true

-- true colors
opt.termguicolors = true

-- backup
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- disable highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- scroll
opt.scrolloff = 10

-- updatetime
opt.updatetime = 100

-- color column
opt.colorcolumn = "80"

-- sign column
opt.signcolumn = "yes"
