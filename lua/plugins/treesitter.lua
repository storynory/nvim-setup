return {
	{
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
			local ok, configs = pcall(require, "nvim-treesitter.configs")
			if not ok then
				return
			end
			configs.setup(opts)
		end,
	},
}
