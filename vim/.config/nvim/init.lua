require("settings")
require("plugins")
require("colorschemes")
require("mappings")

-- Plugin configurations
require("lualine_config")
require("nerd_commenter_config")
require("vim_test_config")
require("floaterm_config")
require("preview_markdown_config")
require("telescope_config")
require("vim_fugitive")
require("emmet_config")
require("treesitter_config")
require("tabline_config")
require("colorizer_config")
require("git_gutter_config")
require("blankline_config")
require("toggleterm_config")
require("which_key_config")
require("nvim_tree_config")

-- completion for native lsp (not using coc)
require("luasnip_config")
require("nvim_cmp_config")

-- native lsp configuration
require("lsp/lspconfig_config")

-- harpoon config
require("harpoon_config")

-- formatting
require("formatting_config")

--- linting
require("linting_config")

-- notify
require("notify_config")
