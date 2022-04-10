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
require('tabs_config')
require('colorizer_config')
-- require('nvim_tree_config')
vim.cmd('source ~/.config/nvim/lua/coc_config.vim')
