return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_hidden = false,
        hide_gitignored = false,
      },
      follow_current_file = {
        enabled = false,
      },
    },
  },
  keys = {
    { "<leader>ge", "<cmd>Neotree reveal<cr>", desc = "Reveal current file in NeoTree" },
  },
}
