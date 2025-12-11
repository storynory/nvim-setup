return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		ensure_installed = {
			"lua",
			"html",
			"css",
			"javascript",
			"svelte",
			"lua",
			"json",
			"markdown",
			"markdown_inline",
		},
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = {
			enable = true,
		},
	},

	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
