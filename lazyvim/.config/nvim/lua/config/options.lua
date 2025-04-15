-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.wo.colorcolumn = "81"
-- Don't send everything to the system clipboard
vim.opt.clipboard = ""
-- Do not change the cwd, for example, when in a monorepo
vim.g.root_spec = { "cwd" }
vim.opt.swapfile = false
