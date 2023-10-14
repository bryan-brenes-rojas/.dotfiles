return {
	"simrat39/symbols-outline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("symbols-outline").setup()
		vim.api.nvim_set_keymap(
			"n",
			"<leader>ws",
			":SymbolsOutline<CR>",
			{ silent = true, noremap = true, desc = "Symbols Outline" }
		)
	end,
}
