-- global
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.scrolloff = 8
vim.opt.mouse = 'a'
vim.opt.updatetime = 1500
-- Also copy to clipboard when yanking text
-- vim.opt.clipboard:prepend {'unnamedplus'}
-- vim.cmd('set ttymouse=sgr')

-- local to window
vim.wo.cursorline = false
vim.wo.cursorcolumn = false
vim.wo.foldmethod = 'indent'
vim.wo.foldnestmax = 10
vim.wo.foldenable = false
vim.wo.foldlevel = 50
vim.wo.wrap = false
vim.wo.linebreak = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.colorcolumn = '81'

-- local to buffer
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.cindent = true

-- nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- global variables
vim.g.mapleader = " "
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 300 }
  end,
  group = highlight_group,
  pattern = '*',
})
