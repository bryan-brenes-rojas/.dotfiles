return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local actions = require("telescope.actions")
      opts.defaults = {
        mappings = {
          i = {
            ["<c-t>"] = actions.select_tab,
          },
        },
      }
    end,
    keys = {
      { "<leader><space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
      { "<leader>/", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    },
  },
}
