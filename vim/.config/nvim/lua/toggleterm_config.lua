require("toggleterm").setup({
	size = 20,
	open_mapping = [[<c-t>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminal = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		width = 180,
		height = 30,
	},
	highlights = {
		FloatBorder = {
			guifg = "#48b0bd",
		},
	},
})

function _G.set_terminal_keymaps()
	local opts = { noremap = true }
	vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-\><C-n>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
