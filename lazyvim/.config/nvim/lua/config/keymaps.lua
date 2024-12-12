-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>cv", "<cmd>let @+=@%<cr>", { desc = "Copy file path", silent = true })

-- clipboard
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Copy to clipboard", silent = true })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to clipboard", silent = true })
