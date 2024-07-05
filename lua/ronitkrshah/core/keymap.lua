-- Keymaps

local keymap = vim.api.nvim_set_keymap

-- global leader key
vim.g.mapleader = " "

-- INSERT mode keybindings
keymap('i', 'jk', '<esc>', {noremap = true, desc = "Quick Escape with jk", silent = true})
