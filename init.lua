-- Leaders MUST be set first
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- Load Lazy BEFORE anything else
require("config.lazy")

vim.cmd('colorscheme tokyonight-moon')

vim.lsp.start({
	name = 'lua-language-server',
	cmd = { 'lua-language-server' },
	root_dir = vim.fs.dirname(vim.fs.find({ '.git', '.vim', 'nvim' }, { upward = true })[1]),
	settings = { Lua = { diagnostics = { globals = { 'vim' } } } },
})
-- Load your config AFTER Lazy initialises plugin paths
require("config.options")
require("config.autocmds")
require("config.keymaps") -- optional
require("config.lsp")
