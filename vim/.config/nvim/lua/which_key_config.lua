local wk = require('which-key')
wk.setup({
  {
    plugins = {
      marks = true, -- shows a list of your marks on ' and `
      registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
      spelling = {
        enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
        suggestions = 20, -- how many suggestions should be shown in the list?
      },
      -- the presets plugin, adds help for a bunch of default keybindings in Neovim
      -- No actual key bindings are created
      presets = {
        operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
        motions = true, -- adds help for motions
        text_objects = true, -- help for text objects triggered after entering an operator
        windows = true, -- default bindings on <c-w>
        nav = true, -- misc bindings to work with windows
        z = true, -- bindings for folds, spelling and others prefixed with z
        g = true, -- bindings for prefixed with g
      },
    },
    -- add operators that will trigger motion and text object completion
    -- to enable all native operators, set the preset / operators plugin above
    operators = { gc = "Comments" },
    key_labels = {
      -- override the label used to display some keys. It doesn't effect WK in any other way.
      -- For example:
      -- ["<space>"] = "SPC",
      -- ["<cr>"] = "RET",
      -- ["<tab>"] = "TAB",
    },
    icons = {
      breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
      separator = "➜", -- symbol used between a key and it's label
      group = "+", -- symbol prepended to a group
    },
    popup_mappings = {
      scroll_down = '<c-d>', -- binding to scroll down inside the popup
      scroll_up = '<c-u>', -- binding to scroll up inside the popup
    },
    window = {
      border = "none", -- none, single, double, shadow
      position = "bottom", -- bottom, top
      margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
      padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
      winblend = 0
    },
    layout = {
      height = { min = 4, max = 25 }, -- min and max height of the columns
      width = { min = 20, max = 50 }, -- min and max width of the columns
      spacing = 3, -- spacing between columns
      align = "left", -- align columns left, center or right
    },
    ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
    triggers = "auto", -- automatically setup triggers
    -- triggers = {"<leader>"} -- or specify a list manually
    triggers_blacklist = {
      -- list of mode / prefixes that should never be hooked by WhichKey
      -- this is mostly relevant for key maps that start with a native binding
      -- most people should not need to change this
      i = { "j", "k" },
      v = { "j", "k" },
    },
  }
})

wk.register({
  ["<c-space>"] = { 'coc#refresh', 'Refresh coc menu' },
  ["<leader>"] = {
    b = { 'Open buffer list' },
    c = { 'Toggle cursor lines' },
    d = {
      name = "+diagnostics",
      p = { 'Go to prev diagnostic' },
      n = { 'Go to next diagnostic' },
      i = { 'Open diangnostic inline info' },
      l = { 'List all diagnostics' },
    },
    e = { 'Open explorer' },
    f = {
      name = "+format",
      a = { 'Format all file' },
    },
    g = {
      name = "+goTo",
      c = { 'Git commit' },
      d = { 'Go to definition' },
      f = { 'Select diff from left' },
      j = { 'Select diff from right' },
      i = { 'Go to implementation' },
      r = { 'Go to references' },
      s = { 'Open git status' },
      y = { 'Go to type definition' },
    },
    h = {
      name = '+prefix -> split horizontally',
      p = { 'Preview hunk' }
    },
    j = { 'Move line down one line' },
    k = { 'Move line up one line' },
    o = { 'Coc outline' },
    p = { 'Open file list' },
    q = {
      name = '+quick',
      c = { 'Close quickfix list' },
      f = { 'Quick fix current' },
      n = { 'Next quick fix item' },
      o = { 'Open quickfix list' },
      p = { 'Prev quick fix item' },
    },
    r = {
      e = { 'Open registers list' },
      n = { 'Coc-rename' },
    },
    s = { 'Open fuzzy search (live_grep)' },
    t = {
      e = { 'Toggle bottom terminal' },
      f = { 'Run test file' },
      l = { 'Run last test' },
      n = { 'Run nearest test' },
      p = { 'Open prev file in new tab' },
      s = { 'Run test suite' },
      t = { 'Toggle floaterm' },
      v = { 'Visit test' },
    },
    v = { 'Split vertically' },
    w = { 'Toggle word wrap' },
    ['.'] = { 'Display code actions' },
    [']'] = {
      h = { 'go to next git hunk' },
    },
    ['['] = {
      h = { 'go to prev git hunk' },
    },
    ['-'] = { 'reduce vertical size' },
    ['+'] = { 'increase vertical size' },
    ['<'] = { 'reduce horizontal size' },
    ['>'] = { 'increase horizontal size' },
  },
})
