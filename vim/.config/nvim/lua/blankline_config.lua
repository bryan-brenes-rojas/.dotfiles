require("indent_blankline").setup {
  show_current_context = true,
  filetype_exclude = {
    "lspinfo",
    "packer",
    "checkhealth",
    "help",
    "man",
    "",
    "markdown",
    "startify",
  }
}
