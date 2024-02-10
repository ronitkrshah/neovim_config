-- Inspired by : ThePrimeagen's neovimrc

-- The LEADER
vim.g.mapleader = " "

-- Quickly Escape
vim.keymap.set("i", "jk", "<ESC>")

-- Netrw File Explorer
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

-- Move lines without copy
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor center while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Don't exit visual mode after indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Keep old text after pasting
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Don't throw invalid register error
vim.keymap.set("n", "Q", "<nop>")

-- Resize Window Using Arrow Keys
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

