local ls = require('luasnip')
require("luasnip.loaders.from_vscode").lazy_load()

function _G.jumpPrev()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end

function _G.jumpNext()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end

-- keymaps for jumping
-- vim.api.nvim_set_keymap('i', '<c-h>', '<Cmd>lua jumpPrev()<CR>', { silent = true })
-- vim.api.nvim_set_keymap('v', '<c-h>', '<Cmd>lua jumpPrev()<CR>', { silent = true })
-- vim.api.nvim_set_keymap('i', '<c-l>', '<Cmd>lua jumpNext()<CR>', { silent = true })
-- vim.api.nvim_set_keymap('v', '<c-l>', '<Cmd>lua jumpNext()<CR>', { silent = true })

local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node

ls.config.set_config({
  update_events = "TextChanged,TextChangedI",
})
