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


-- add binaries installed by mason.nvim to path
local is_windows = vim.fn.has "win32" ~= 0
local sep = is_windows and "\\" or "/"
local delim = is_windows and ";" or ":"
vim.env.PATH = table.concat({ vim.fn.stdpath "data", "mason", "bin" }, sep) .. delim .. vim.env.PATH
