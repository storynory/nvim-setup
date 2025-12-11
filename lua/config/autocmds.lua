-- Emergency save when file is readonly
vim.api.nvim_create_autocmd("BufReadPre", {
	callback = function()
		if vim.bo.readonly then
			vim.cmd('w !sudo tee % > /dev/null')
			vim.cmd('e!')
		end
	end,
})

-- Reveal file in Finder (macOS)
vim.api.nvim_create_user_command("Rfinder", function()
	local path = vim.api.nvim_buf_get_name(0)
	if path ~= "" then
		os.execute('open -R "' .. path .. '"')
	end
end, {})

-- Remove trailing whitespace before save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = { "*.md", "*.txt" },
	callback = function()
		local save = vim.fn.winsaveview()
		vim.cmd [[%s/\s\+$//e]]
		vim.fn.winrestview(save)
	end,
})

-- Zen writing settings for prose files
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "text", "md" },
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "en_gb"

		vim.opt_local.textwidth = 0
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
		vim.opt_local.breakindent = true

		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
	end,

})
-- For markdown and text files, use display-line motions
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "text", "md" },
	callback = function()
		-- Enable wrapping
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true

		local map = vim.keymap.set
		local opts = { buffer = true, silent = true, noremap = true }

		-- Move down/up by *display* lines (soft wrap aware)
		map("n", "j", "gj", opts)
		map("n", "k", "gk", opts)

		-- Keep h/l normal (they behave fine with soft wrap), but if you want:
		-- map("n", "h", "g^", opts)
		-- map("n", "l", "g$", opts)
	end,
})
vim.api.nvim_create_autocmd('BufEnter', {
	pattern = '*.md',
	callback = function()
		vim.b.completion = false
	end,
})

vim.api.nvim_create_user_command("LspList", function()
	local clients = vim.lsp.get_clients({ bufnr = 0 })
	if #clients == 0 then
		print("No LSPs attached to this buffer.")
		return
	end

	for _, c in ipairs(clients) do
		print("• " .. c.name)
	end
end, {})
