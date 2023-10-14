return {
	"mattn/emmet-vim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		vim.g.user_emmet_install_global = 0
		vim.cmd("autocmd FileType html,css EmmetInstall")
	end,
}
