return require("ibl").setup {
  scope = { enabled = false },
  exclude = {
    filetypes = {
      "lspinfo",
      "checkhealth",
      "man",
      "",
      "markdown",
      "startify",
      "lspinfo",
      "packer",
      "help",
      "gitcommit",
      "TelescopePrompt",
      "TelescopeResults",
    }
  }
}
