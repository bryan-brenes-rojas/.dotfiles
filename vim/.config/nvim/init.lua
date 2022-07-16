require('plugins')
require('colorschemes')
require('settings')
require('mappings')

-- Plugin configurations
-- require('lightline_config')
require('lualine_config')
require('nerd_commenter_config')
require('vim_test_config')
require('floaterm_config')
require('preview_markdown_config')
require('quick_scope_config')
require('telescope_config')
require('vim_fugitive')
require('emmet_config')
require('treesitter_config')
require('tabline_config')
-- require('tabs_config')
require('colorizer_config')
require('git_gutter_config')
require('blankline_config')
-- require('nvim_tree_config')

-- completion for native lsp (not using coc)
-- require('luasnip_config')
-- require('nvim_cmp_config')

-- native lsp configuration
-- require('lsp/nvim_lsp_installer_config')
-- require('lsp/lspconfig_config')

-- coc configurations
vim.cmd('source ~/.config/nvim/lua/coc_config.vim')
