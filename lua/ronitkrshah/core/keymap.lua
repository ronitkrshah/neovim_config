-- Keymaps

local keymap = vim.api.nvim_set_keymap

-- global leader key
vim.g.mapleader = " "

-- INSERT mode keybindings
keymap('i', 'jk', '<esc>', {noremap = true, desc = "Quick Escape with jk", silent = true})

-- PLUGINS
-- nvim-tree
vim.keymap.set("n", "<Leader>ee", ":NvimTreeToggle<CR>", { silent = true} )
vim.keymap.set("n", "<Leader>ef", ":NvimTreeFindFile<CR>", { silent = true} )
vim.keymap.set("n", "<Leader>ec", ":NvimTreeCollapse<CR>", { silent = true} )
