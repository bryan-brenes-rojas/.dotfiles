return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "kyazdani42/nvim-web-devicons" },
	config = function()
		local fileNameConfig = {
			"filename",
			symbols = {
				modified = " ●", -- Text to show when the file is modified.
				readonly = " ", -- Text to show when the file is non-modifiable or readonly.
				unnamed = "[No Name]", -- Text to show for unnamed buffers.
			},
		}

		-- These lines are to be able to override the c section and use the same
		-- color as the bg. Remove when other themes are used (also use 'auto' as
		-- theme for lualine)
		local catppuccin_theme = require("catppuccin.utils.lualine")("frappe")
		local catppuccin_colors = require("catppuccin.palettes").get_palette("frappe")
		catppuccin_theme.normal.c = { bg = catppuccin_colors.base, fg = catppuccin_colors.text }
		catppuccin_theme.inactive.c = { bg = catppuccin_colors.base, fg = catppuccin_colors.overlay0 }

		require("lualine").setup({
			options = {
				icons_enabled = true,
				-- theme = catppuccin_theme, -- auto for automatically picking up theme
				theme = "auto",
				-- component_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
				-- component_separators = "",
				-- section_separators = "",
				disabled_filetypes = { "coc-explorer" },
				always_divide_middle = true,
				globalstatus = false,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					"diff",
					{
						"diagnostics",
						sections = { "error" },
					},
				},
				lualine_c = { fileNameConfig },
				lualine_x = { "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { fileNameConfig },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {
				lualine_a = {},
				lualine_b = {
					{
						"tabs",
						mode = 0,
						tabs_color = {
							active = "lualine_a_normal",
						},
					},
				},
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "branch" },
				lualine_z = {},
			},
			extensions = {},
		})
	end,
}
