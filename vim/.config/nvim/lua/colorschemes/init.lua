require('colorschemes/onedark_config')
require('colorschemes/nightfox_config')
require('colorschemes/dracula_config')

-- set onedark
vim.cmd('colorscheme onedark')
vim.cmd('hi link CocMenuSel PmenuSel') -- remove if colorscheme is not onedark
vim.cmd('hi link FloatermBorder TelescopePromptBorder') -- remove if colorscheme is not onedark
-- end of setting onedard
