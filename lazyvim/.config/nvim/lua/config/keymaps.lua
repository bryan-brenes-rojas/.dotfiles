-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>cv", "<cmd>let @+=@%<cr>", { desc = "Copy file path", silent = true })

-- clipboard
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Copy to clipboard", silent = true })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to clipboard", silent = true })

-- quickfix list
vim.keymap.set("n", "<leader>qo", "<cmd>copen<cr>", { desc = "Open the quickfix list", silent = true })
vim.keymap.set("n", "<leader>qc", "<cmd>cclose<cr>", { desc = "Close the quickfix list", silent = true })
vim.keymap.set("n", "<leader>qn", "<cmd>cnext<cr>", { desc = "Go to next quickfix item", silent = true })
vim.keymap.set("n", "<leader>qp", "<cmd>cprevious<cr>", { desc = "Go to next quickfix item", silent = true })
