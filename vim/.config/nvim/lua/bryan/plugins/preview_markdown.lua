return {
	"skanehira/preview-markdown.vim",
	config = function()
		vim.g.preview_markdown_parser = "glow"
		vim.g.preview_markdown_auto_update = 1
	end,
}
