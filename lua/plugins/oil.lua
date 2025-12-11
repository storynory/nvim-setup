return {
	{
		"stevearc/oil.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },

		config = function()
			require("oil").setup({

				default_file_explorer = true,
				preview_split = "auto",
				-- ⬇ ONLY affects floating windows, but we also set it for consistency
			})

			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		end,
	},
}
