return {
	{
		'saghen/blink.cmp',
		version = '1.*',
		opts = {
			completion = {
				documentation = {
					auto_show = true, -- Enable documentation window
					auto_show_delay_ms = 300, -- Optional delay to avoid flicker
					window = { border = 'single' }, -- Make it look nice
				},
			},
			-- ... other options
			signature = { enabled = true }

		},

	}


}
