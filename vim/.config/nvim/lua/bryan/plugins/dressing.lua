return {
	"stevearc/dressing.nvim",
	config = function()
		require("dressing").setup({
			input = {
				relative = "editor",
				prefer_width = 0.5,
				win_options = {
					winblend = 0,
					winhighlight = "FloatBorder:Title",
				},
			},
		})
	end,
}
