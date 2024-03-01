return {
	"nvim-pack/nvim-spectre",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("spectre").setup({
			color_devicons = true,
			replace_engine = {
				["sed"] = {
					cmd = "sed",
					args = { "-i", "", "-E" },
				},
			},
		})
		vim.api.nvim_set_keymap(
			"n",
			"<leader>ss",
			"<cmd>lua require('spectre').toggle()<CR>",
			{ silent = true, noremap = true, desc = "Open Search and replace" }
		)
	end,
}
