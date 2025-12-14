-- Add keymaps here as you grow your config
local map = vim.keymap.set
map("n", "<leader>q", ":q!<CR>", { desc = "quit no save" })
map("n", "<leader>w", ":w<CR>", { desc = "save" })
map("n", "<leader>bd", ":bd<CR>", { desc = "quit buffer" })

-- easy mac commands
map({ "n", "i" }, "<D-s>", function()
	vim.cmd("w")
end, { desc = "Save file" })
map("i", "<D-f>", "<Esc>/", { desc = "Find (search) insert mode" })
map("n", "<D-f>", "<Esc>/", { desc = "Find (search) insert mode" })

map("v", "<D-c>", '"+y', { noremap = true, silent = true }, { desc = "copy to clipboard normal mode" })
map("i", "<D-c>", '"+y', { noremap = true, silent = true }, { desc = "copy to clip board insert mode" })
map("n", "<leader>noh", "<cmd>noh<CR>", { desc = "Clear search highlight" })

-- moving in insert mode
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
