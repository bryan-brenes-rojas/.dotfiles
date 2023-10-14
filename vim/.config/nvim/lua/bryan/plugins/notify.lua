return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")

		notify.setup({
			max_width = 70,
			render = "wrapped-compact",
			top_down = false,
		})

		vim.notify = notify

		vim.keymap.set(
			"n",
			"<leader>nd",
			notify.dismiss,
			{ noremap = true, silent = true, desc = "Notifications dismiss" }
		)
		vim.keymap.set(
			"n",
			"<leader>ns",
			":Notifications<CR>",
			{ noremap = true, silent = true, desc = "Show notification" }
		)
	end,
}
