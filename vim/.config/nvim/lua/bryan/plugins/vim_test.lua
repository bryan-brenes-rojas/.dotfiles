return {
	"vim-test/vim-test",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local opts = { silent = true, noremap = true }
		vim.api.nvim_set_keymap("n", "<leader>tn", ":TestNearest<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader>tf", ":TestFile<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader>ts", ":TestSuite<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader>tl", ":TestLast<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader>tv", ":TestVisit<CR>", opts)
		vim.cmd("let g:test#strategy = 'floaterm'")
	end,
}
