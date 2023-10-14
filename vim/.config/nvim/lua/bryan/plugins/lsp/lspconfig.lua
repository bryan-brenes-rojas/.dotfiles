return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		{ "j-hui/fidget.nvim", tag = "legacy", opts = {} },
		"folke/neodev.nvim",
	},
	config = function()
		vim.diagnostic.config({
			virtual_text = {
				source = "if_many", -- Or "if_many"
				prefix = "▎",
				severity_sort = true,
			},
			float = {
				source = "always", -- Or "if_many"
			},
		})

		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, opts)
		vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, opts)
		vim.keymap.set("n", "<leader>di", vim.diagnostic.open_float, opts)
		vim.keymap.set("n", "<leader>dl", ":lua require'telescope.builtin'.diagnostics()<CR>", opts)
		vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

		local on_attach = function(_, bufnr)
			local nmap = function(keys, func, desc)
				if desc then
					desc = "LSP: " .. desc
				end

				vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
			end

			nmap("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
			nmap("<leader>.", vim.lsp.buf.code_action, "Code action")

			nmap("gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
			nmap("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
			nmap("gi", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
			nmap("<leader>gy", vim.lsp.buf.type_definition, "Type [D]efinition")
			nmap("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
			nmap("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")

			-- See `:help K` for why this keymap
			nmap("K", vim.lsp.buf.hover, "Hover Documentation")

			-- Lesser used LSP functionality
			nmap("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

			-- Create a command `:Format` local to the LSP buffer
			vim.api.nvim_buf_create_user_command(bufnr, "Format", function(_)
				vim.lsp.buf.format()
			end, { desc = "Format current buffer with LSP" })
		end

		-- vim.api.nvim_create_autocmd('LspAttach', {
		-- callback = function(args)
		-- local client = vim.lsp.get_client_by_id(args.data.client_id)
		-- if client.server_capabilities.documentHighlightProvider ~= nil then
		-- vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
		-- callback = function()
		-- vim.lsp.buf.document_highlight()
		-- end
		-- })
		-- end
		-- vim.api.nvim_create_autocmd({ "CursorMoved" }, {
		-- callback = function()
		-- vim.lsp.buf.clear_references()
		-- end
		-- })
		-- end,
		-- })

		local function organize_imports()
			local params = {
				command = "_typescript.organizeImports",
				arguments = { vim.api.nvim_buf_get_name(0) },
				title = "",
			}
			vim.lsp.buf.execute_command(params)
		end

		local servers = {
			pyright = {},
			tsserver = {
				commands = {
					OrganizeImports = {
						organize_imports,
						description = "OrganizeImports",
					},
				},
			},
			rust_analyzer = {},
			jsonls = {},
			angularls = {},
			cssls = {},
			html = {},
			sqlls = {},
			bashls = {},
			emmet_ls = {},
			marksman = {},
			gopls = {},
			clangd = {},

			lua_ls = {
				settings = {
					Lua = {
						workspace = { checkThirdParty = false },
						telemetry = { enable = false },
					},
				},
			},
		}

		-- Setup neovim lua configuration
		require("neodev").setup()

		-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

		-- Ensure the servers above are installed
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		mason_lspconfig.setup({
			ensure_installed = vim.tbl_keys(servers),
		})

		mason_lspconfig.setup_handlers({
			function(server_name)
				require("lspconfig")[server_name].setup({
					capabilities = capabilities,
					on_attach = on_attach,
					settings = servers[server_name].settings or {},
					commands = servers[server_name].commands or {},
					filetypes = (servers[server_name] or {}).filetypes,
				})
			end,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint", -- python linter
				"eslint_d", -- js linter
				"clang-format", -- c/cpp
			},
		})
	end,
}
