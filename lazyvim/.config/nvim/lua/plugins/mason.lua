return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    table.insert(opts.ensure_installed, "css-lsp")
    table.insert(opts.ensure_installed, "emmet-language-server")
  end,
}
