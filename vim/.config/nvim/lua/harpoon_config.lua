local options = { noremap = true, silent = true }

-- Add a new file to the marks
vim.api.nvim_set_keymap('n', '<leader>qa', ":lua require'harpoon.mark'.add_file()<CR>", options)

-- toggle menu
vim.api.nvim_set_keymap('n', '<leader>qm', ":lua require'harpoon.ui'.toggle_quick_menu()<CR>", options)

-- Accessing files
vim.api.nvim_set_keymap('n', '<leader>qj', ":lua require'harpoon.ui'.nav_file(1)<CR>", options)
vim.api.nvim_set_keymap('n', '<leader>qk', ":lua require'harpoon.ui'.nav_file(2)<CR>", options)
vim.api.nvim_set_keymap('n', '<leader>ql', ":lua require'harpoon.ui'.nav_file(3)<CR>", options)
vim.api.nvim_set_keymap('n', '<leader>q;', ":lua require'harpoon.ui'.nav_file(4)<CR>", options)
