return {
	{
		'nvimdev/dashboard-nvim',
		event = 'VimEnter',
		dependencies = {
			{ 'nvim-tree/nvim-web-devicons' },
		},
		config = function()
			require('dashboard').setup({
				theme = 'hyper', -- or 'doom' / 'alpha' etc.
				config = {
					header = {
						' @..@',
						' ( ^__^ )',
						' ^^    ^^',
						'Hello bertie',
					},
				},
			})
		end,
	},
}
