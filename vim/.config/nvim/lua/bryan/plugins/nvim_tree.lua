return {
	"kyazdani42/nvim-tree.lua",
	dependencies = { "kyazdani42/nvim-web-devicons" },
	config = function()
		local function my_on_attach(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
			vim.keymap.set("n", "t", api.node.open.tab, opts("Open: new tab"))
			vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
			vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close parent"))
			vim.keymap.set("n", "E", api.node.open.vertical, opts("Open: vertical"))
			vim.keymap.set("n", "s", api.node.open.horizontal, opts("Open: horizontal"))
			vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>", opts("Toggle Terminal"))
		end

		require("nvim-tree").setup({
			on_attach = my_on_attach,
			auto_reload_on_write = true,
			disable_netrw = false,
			hijack_cursor = false,
			hijack_netrw = true,
			hijack_unnamed_buffer_when_opening = false,
			open_on_tab = false,
			sort_by = "name",
			view = {
				width = 40,
				side = "left",
				preserve_window_proportions = false,
				number = true,
				relativenumber = true,
				signcolumn = "yes",
			},
			renderer = {
				indent_markers = {
					enable = true,
					icons = {
						corner = "└ ",
						edge = "│ ",
						none = "  ",
					},
				},
			},
			hijack_directories = {
				enable = true,
				auto_open = true,
			},
			update_focused_file = {
				enable = false,
				update_cwd = false,
				ignore_list = {},
			},
			system_open = {
				cmd = nil,
				args = {},
			},
			diagnostics = {
				enable = true,
				show_on_dirs = true,
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
			filters = {
				dotfiles = false,
				custom = {},
				exclude = {},
			},
			git = {
				enable = true,
				ignore = false,
				timeout = 400,
			},
			actions = {
				use_system_clipboard = true,
				change_dir = {
					enable = true,
					global = false,
				},
				open_file = {
					quit_on_open = false,
					resize_window = true,
					window_picker = {
						enable = true,
						chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
						exclude = {
							filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
							buftype = { "nofile", "terminal", "help" },
						},
					},
				},
			},
			trash = {
				cmd = "trash",
				require_confirm = true,
			},
			log = {
				enable = false,
				truncate = false,
				types = {
					all = false,
					config = false,
					copy_paste = false,
					git = false,
					profile = false,
				},
			},
		})

		local opts = { noremap = true, silent = true }

		vim.api.nvim_set_keymap("n", "<leader>et", ":NvimTreeToggle<CR>", opts)
		vim.api.nvim_set_keymap("n", "<leader>ef", ":NvimTreeFindFile<CR>", opts)
	end,
}
