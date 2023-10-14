return {
	"scrooloose/nerdcommenter",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		vim.api.nvim_set_keymap("n", "++", "<plug>NERDCommenterToggle", {})
		vim.api.nvim_set_keymap("v", "++", "<plug>NERDCommenterToggle", {})
		vim.api.nvim_set_keymap("n", "<leader>cc", "<Nop>", {})

		vim.g.NERDSpaceDelims = 1
	end,
}
