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
vim.api.nvim_set_keymap('i', '<c-h>', '<Cmd>lua jumpPrev()<CR>', { silent = true })
vim.api.nvim_set_keymap('v', '<c-h>', '<Cmd>lua jumpPrev()<CR>', { silent = true })
vim.api.nvim_set_keymap('i', '<c-l>', '<Cmd>lua jumpNext()<CR>', { silent = true })
vim.api.nvim_set_keymap('v', '<c-l>', '<Cmd>lua jumpNext()<CR>', { silent = true })

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

ls.add_snippets("all", {
  s("trigger", {
    t({ "After jumping forward once, cursor is here ->" }), i(2, 'Second jump'),
    t({ "", "After expanding, the cursor is here ->" }), i(1, 'First jump'),
    t({ "", "After jumping once more, the snippet is exited there ->" }), i(0, 'last jump'),
  }),
})

-- javascript
ls.add_snippets({"typescript", "javascript", "javascriptreact"}, {
  s("function", {
    i(1, 'public'),
    t(' '),
    i(2, 'name'),
    t('('),
    i(3, 'args'),
    t('): '),
    i(4, 'returnType'),
    t({ ' {', '  ' }),
    i(0),
    t({ '', '}' }),
  }),
})
