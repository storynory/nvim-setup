-- In ~/.config/nvim/lua/config/lsp_servers.lua

local lspconfig = require('lspconfig')
local capabilities = require('config.lsp_setup').capabilities
local on_attach = require('config.lsp_setup').on_attach

-- ---
-- CSS Configuration
-- This tells the CSS language server to validate files
-- ---
lspconfig.cssls.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = {
		css = {
			validate = {
				enable = true,
				-- We can force all diagnostics (warnings, hints, errors) to appear here
				maxNumberOfProblems = -1,
			},
		},
	},
})

-- ---
-- HTML Configuration
-- This is where we tell HTML to use the settings for embedded CSS
-- ---
lspconfig.html.setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { 'html', 'svelte', 'vue' }, -- Add svelte and vue filetypes here
	configuration_section = {
		css = {
			validate = true,
			completion = { triggerPropertyValueCompletion = true }
		},
	},
})

-- ---
-- Svelte Configuration (Requires svelte-language-server installed via Mason)
-- Svelte manages its own internal CSS/JS/TS bridging
-- ---
lspconfig.svelte.setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
