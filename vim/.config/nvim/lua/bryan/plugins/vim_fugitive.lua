return {
	"tpope/vim-fugitive",
	config = function()
		local opts = { noremap = true, silent = true }

		vim.api.nvim_set_keymap("n", "<leader>gs", ":G<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader>gc", ":Git commit<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader>gf", ":diffget //2<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader>gj", ":diffget //3<CR>", opts)
	end,
}
