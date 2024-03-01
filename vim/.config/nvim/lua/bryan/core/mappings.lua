local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<leader>ct", ":set cursorcolumn! cursorline!<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>te", ":split | terminal<CR> <C-w>J :res 10<CR> i", opts)

-- horizontal resize
vim.api.nvim_set_keymap("n", "<leader>-", ":res -10<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>+", ":res +10<CR>", opts)

-- vertical resize
vim.api.nvim_set_keymap("n", "<leader><", ":vertical resize -10<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>>", ":vertical resize +10<CR>", opts)

-- window splitting
vim.api.nvim_set_keymap("n", "<leader>v", ":vs<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>h", ":sp<CR>", opts)

vim.api.nvim_set_keymap("n", "rv", ":source $MYVIMRC<CR>", opts)

-- window navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)

-- toggle wrap
vim.api.nvim_set_keymap("n", "<leader>wt", ":set wrap!<CR>", opts)

-- Copy to end of line
vim.api.nvim_set_keymap("n", "Y", "y$", opts)

-- Copy to clipboard
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', opts)
vim.api.nvim_set_keymap("n", "<leader>yy", '"+yy', opts)
vim.api.nvim_set_keymap("n", "<leader>Y", '"+y$', opts)

-- keep cursor centered
vim.api.nvim_set_keymap("n", "n", "nzzzv", opts)
vim.api.nvim_set_keymap("n", "N", "Nzzzv", opts)
vim.api.nvim_set_keymap("n", "J", "mzJ`z", opts)

-- undo break points
vim.api.nvim_set_keymap("i", ",", ",<c-g>u", opts)
vim.api.nvim_set_keymap("i", ".", ".<c-g>u", opts)
vim.api.nvim_set_keymap("i", "!", "!<c-g>u", opts)
vim.api.nvim_set_keymap("i", "?", "?<c-g>u", opts)

-- Add relative jumps to jump list
vim.cmd([[nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k']])
vim.cmd([[nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j']])

-- moving text
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.api.nvim_set_keymap("n", "<leader>j", ":m .+1<CR>==", opts)
vim.api.nvim_set_keymap("n", "<leader>k", ":m .-2<CR>==", opts)
vim.api.nvim_set_keymap("i", "<C-j>", "<esc>:m .+1<CR>==A", opts)
vim.api.nvim_set_keymap("i", "<C-k>", "<esc>:m .-2<CR>==A", opts)

-- open previous file in new tab
vim.api.nvim_set_keymap("n", "<leader>tp", ":tabnew #<CR>", opts)

-- open init.lua in new tab
vim.api.nvim_set_keymap("n", "<leader>ov", ":tabnew $MYVIMRC<CR>", opts)

-- move throw the quickfix list
vim.api.nvim_set_keymap("n", "<leader>qn", ":cnext <CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>qp", ":cprev <CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>qo", ":copen <CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>qc", ":cclose <CR>", opts)

-- Copy file name and path in the clipboard
vim.api.nvim_set_keymap("n", "<leader>cp", ":let @+=@%<CR>", opts)

-- Move directly to window
vim.api.nvim_set_keymap("n", "<leader>1", "1<C-w>w<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>2", "2<C-w>w<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>3", "3<C-w>w<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>4", "4<C-w>w<CR>", opts)

-- Toggle relative numbers
vim.api.nvim_set_keymap("n", "<leader>rr", ":set relativenumber!<CR>", opts)

-- Open links
vim.api.nvim_set_keymap(
	"n",
	"<leader>gx",
	"<cmd>silent !open <cWORD><cr>",
	{ noremap = true, silent = true, desc = "Open link under cursor" }
)
