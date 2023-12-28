-- Options
local opts = { noremap = true, silent = true }

-- Shorthand
local keymap = vim.api.nvim_set_keymap

-- Set Leader Key
vim.g.mapleader = " "

--
-- NORMAL MODE
--

-- Window Navigation
keymap("n", "<Leader>h", "<C-w>h", opts)
keymap("n", "<Leader>j", "<C-w>j", opts)
keymap("n", "<Leader>k", "<C-w>k", opts)
keymap("n", "<Leader>l", "<C-w>l", opts)

-- Resize Window Using Arrow Keys
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

--
-- INSERT MODE
--

-- Quick Escape
keymap("i", "jk", "<ESC>", opts)

--
-- VISUAL MODE
--

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Yank
keymap("v", "p", '"_dP', opts)


---
--- TERMINAL MODE
---

-- Escape From Terminal Mode with CTRL+t+e
keymap('t', '<C-t>e', '<C-\\><C-n>', { noremap = true, silent = true })

