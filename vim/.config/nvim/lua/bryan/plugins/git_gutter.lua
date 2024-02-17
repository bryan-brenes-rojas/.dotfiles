return {
	"airblade/vim-gitgutter",
	enabled = false,
	config = function()
		local opts = { noremap = true, silent = true }
		vim.api.nvim_set_keymap("n", "]h", ":GitGutterNextHunk<CR>", opts)
		vim.api.nvim_set_keymap("n", "[h", ":GitGutterPrevHunk<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader>hp", ":GitGutterPreviewHunk<CR>", opts)
	end,
}
