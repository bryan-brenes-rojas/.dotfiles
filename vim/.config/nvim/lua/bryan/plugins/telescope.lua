return {
	"nvim-telescope/telescope.nvim",
	dependencies = { { "nvim-lua/plenary.nvim" } },
	config = function()
		local options = { noremap = true, silent = true }

		vim.api.nvim_set_keymap("n", "<leader>p", ":lua require'telescope.builtin'.find_files()<CR>", options)
		vim.api.nvim_set_keymap("n", "<leader>b", ":lua require'telescope.builtin'.buffers()<CR>", options)
		vim.api.nvim_set_keymap("n", "<leader>s", ":lua require'telescope.builtin'.live_grep()<CR>", options)
		vim.api.nvim_set_keymap("n", "<leader>gg", ":lua require'telescope.builtin'.git_files()<CR>", options)

		local actions = require("telescope.actions")

		require("telescope").setup({
			defaults = {
				layout_config = {
					horizontal = {
						width = 0.9,
						preview_width = 0.4,
					},
				},
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
			},
			pickers = {
				find_files = {
					prompt_prefix = " ",
				},
				buffers = {
					prompt_prefix = " ",
				},
				live_grep = {
					prompt_prefix = " ",
				},
			},
		})

		require("telescope").load_extension("harpoon")
	end,
}
