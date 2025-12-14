local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true
vim.opt.splitright = true
-- Clipboard (macOS)
-- opt.clipboard = "unnamedplus"

-- Undo & Swap
opt.swapfile = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- Scrolling
opt.scrolloff = 10
opt.sidescrolloff = 8
