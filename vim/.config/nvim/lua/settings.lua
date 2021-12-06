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
-- vim.cmd('set ttymouse=sgr')

-- local to window
vim.wo.cursorline = true
vim.wo.cursorcolumn = true
vim.wo.foldmethod = 'indent'
vim.wo.foldnestmax = 10
vim.wo.foldenable = false
vim.wo.foldlevel = 2
vim.wo.wrap = true
vim.wo.linebreak = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.colorcolumn = '81'

-- local to buffer
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.cindent = true

-- global variables
vim.g.mapleader = " "

vim.cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup END
]])
