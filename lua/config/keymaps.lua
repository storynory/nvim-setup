-- Add keymaps here as you grow your config
local map = vim.keymap.set

map("n", "<leader>q", ":q<CR>")
map("n", "<leader>w", ":w<CR>")
map("v", "<D-c>", '"+y', { noremap = true, silent = true })
