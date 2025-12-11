return {


	{
		"folke/which-key.nvim",
		modes = {
			n = true, -- Normal mode (usually enabled)
			i = false, -- Insert mode (usually disabled)
			v = false, -- Character-wise visual mode
			x = false, -- Visual modes (line and block-wise)
			s = false, -- Select mode
			o = false, -- Operator-pending mode
			t = false, -- Terminal mode
			c = false, -- Command mode
		},

		keys = { "<leader>", "<c-w>", '"', "'", "`", "c", "v", "g" },
		cmd = "WhichKey",
	},




}
