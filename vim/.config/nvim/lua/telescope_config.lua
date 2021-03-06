local options = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>p', ":lua require'telescope.builtin'.find_files()<CR>", options)
vim.api.nvim_set_keymap('n', '<leader>b', ":lua require'telescope.builtin'.buffers()<CR>", options)
vim.api.nvim_set_keymap('n', '<leader>s', ":lua require'telescope.builtin'.live_grep()<CR>", options)

require('telescope').setup({
  pickers = {
    find_files = {
      prompt_prefix = ' '
    },
    buffers = {
      prompt_prefix = ' '
    },
    live_grep = {
      prompt_prefix = ' '
    }
  }
})

require('telescope').load_extension('coc')
