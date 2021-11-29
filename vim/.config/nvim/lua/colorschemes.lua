require('nightfox').load('nightfox')
-- gruvbox config
-- vim.cmd('colorscheme gruvbox')
-- vim.cmd('set background=dark')
-- vim.cmd('highlight Normal ctermbg=none')
-- gruvbox config end

-- Dracula colorscheme
vim.cmd([[
augroup DraculaOverrides
    autocmd!
    autocmd ColorScheme dracula highlight DraculaBoundary guibg=none
    autocmd ColorScheme dracula highlight DraculaDiffDelete ctermbg=none guibg=none
    autocmd ColorScheme dracula highlight DraculaComment cterm=italic gui=italic
augroup end
]])

-- Nightfox config
local nightfox = require('nightfox')

nightfox.setup({
  fox = "nightfox", -- Which fox style should be applied
  transparent = false, -- Disable setting the background color
  alt_nc = true, -- Non current window bg to alt color see `hl-NormalNC`
  terminal_colors = true, -- Configure the colors used when opening :terminal
  styles = {
    comments = "italic", -- Style that is applied to comments: see `highlight-args` for options
    functions = "NONE", -- Style that is applied to functions: see `highlight-args` for options
    keywords = "NONE", -- Style that is applied to keywords: see `highlight-args` for options
    strings = "NONE", -- Style that is applied to strings: see `highlight-args` for options
    variables = "NONE", -- Style that is applied to variables: see `highlight-args` for options
  },
  inverse = {
    match_paren = true, -- Enable/Disable inverse highlighting for match parens
    visual = true, -- Enable/Disable inverse highlighting for visual selection
    search = true, -- Enable/Disable inverse highlights for search highlights
  },
  colors = {}, -- Override default colors
  hlgroups = {}, -- Override highlight groups
})
