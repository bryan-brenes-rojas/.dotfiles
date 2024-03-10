return {
	"nvim-neotest/neotest",
	enabled = true,
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/neotest-jest",
		"marilari88/neotest-vitest",
		"olimorris/neotest-rspec",
		"nvim-neotest/neotest",
		"alfaix/neotest-gtest",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-jest")({
					jestCommand = require("neotest-jest.jest-util").getJestCommand(vim.fn.expand("%:p:h"))
						.. " --watch",
				}),
				require("neotest-vitest"),
				require("neotest-rspec"),
				require("neotest-gtest").setup({}),
			},
		})

		vim.api.nvim_set_keymap(
			"n",
			"<leader>tn",
			"<cmd>lua require('neotest').run.run()<CR>",
			{ silent = true, noremap = true, desc = "Run nearst test" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>tf",
			"<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>",
			{ silent = true, noremap = true, desc = "Run test file" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>tx",
			"<cmd>lua require('neotest').run.stop()<CR>",
			{ silent = true, noremap = true, desc = "Stop test" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>ts",
			"<cmd>lua require('neotest').summary.toggle()<CR>",
			{ silent = true, noremap = true, desc = "Toggle test summary" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>tl",
			"<cmd>lua require('neotest').run.run_last()<CR>",
			{ silent = true, noremap = true, desc = "Run last test" }
		)
		vim.api.nvim_set_keymap(
			"n",
			"<leader>tw",
			"<cmd>lua require('neotest').watch.toggl3()<CR>",
			{ silent = true, noremap = true, desc = "Toggle watch test" }
		)
	end,
}
