return {
	"L3MON4D3/LuaSnip",
	enabled = true,
	config = function()
		local ls = require("luasnip")

		vim.keymap.set({ "i", "s" }, "<C-n>", function()
			if ls.choice_active() then
				ls.change_choice(1)
			end
		end, { silent = true })

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

		local javascriptSnippets = {
			-- console.log()
			s("cl", {
				t("console.log("),
				i(0, "msg"),
				t(")"),
			}),
			-- describe
			s("desc", {
				t("describe('"),
				i(1, "title"),
				t({ "', () => {", "  " }),
				i(0),
				t({ "", "});" }),
			}),
			-- it
			s("it", {
				t("it('"),
				i(1, "title"),
				t("', "),
				c(2, {
					t("async "),
					t(""),
				}),
				t({ "() => {", "  " }),
				i(0),
				t({ "", "});" }),
			}),
			-- it.todo
			s("ittodo", {
				t("it.todo('"),
				i(0, "title"),
				t("');"),
			}),
		}

		ls.add_snippets("typescript", javascriptSnippets)
		ls.add_snippets("javascript", javascriptSnippets)
		ls.add_snippets("typescriptreact", javascriptSnippets)
		ls.add_snippets("javascriptreact", javascriptSnippets)
	end,
}
