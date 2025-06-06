-- LSP Configuration & Plugins

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		-- Automatically install LSPs and related tools to stdpath for Neovim
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",

		-- Useful status updates for LSP.
		{ "j-hui/fidget.nvim", opts = {} },

		-- `neodev` configures Lua LSP for your Neovim config, runtime and plugins
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
			callback = function(event)
				local map = function(keys, func, desc)
					vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
				end

				-- Jump to the definition of the word under your cursor.
				--  This is where a variable was first declared, or where a function is defined, etc.
				--  To jump back, press <C-t>.
				map("<leader>lgd", require("telescope.builtin").lsp_definitions, "[D]efinition")

				-- This is not Goto Definition, this is Goto Declaration.
				--  For example, in C this would take you to the header.
				map("<leader>lgD", vim.lsp.buf.declaration, "[D]eclaration")

				-- Find references for the word under your cursor.
				map("<leader>lgr", require("telescope.builtin").lsp_references, "[R]eferences")

				-- Jump to the implementation of the word under your cursor.
				--  Useful when your language has ways of declaring types without an actual implementation.
				map("<leader>lgI", require("telescope.builtin").lsp_implementations, "[I]mplementation")

				-- Jump to the type of the word under your cursor.
				--  Useful when you're not sure what type a variable is and you want to see
				--  the definition of its *type*, not where it was *defined*.
				map("<leader>lgt", require("telescope.builtin").lsp_type_definitions, "[T]ype Definition")

				-- Fuzzy find all the symbols in your current document.
				--  Symbols are things like variables, functions, types, etc.
				map("<leader>ld", require("telescope.builtin").lsp_document_symbols, "[D]ocument Symbols")

				-- Fuzzy find all the symbols in your current workspace.
				--  Similar to document symbols, except searches over your entire project.
				map("<leader>lw", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace Symbols")

				-- Rename the variable under your cursor.
				--  Most Language Servers support renaming across files, etc.
				map("<leader>lr", vim.lsp.buf.rename, "[R]ename")

				-- Execute a code action, usually your cursor needs to be on top of an error
				-- or a suggestion from your LSP for this to activate.
				map("<leader>lc", vim.lsp.buf.code_action, "[C]ode Action")

				-- Opens a popup that displays documentation about the word under your cursor
				--  See `:help K` for why this keymap.
				map("K", vim.lsp.buf.hover, "Hover Documentation")

				-- When you move your cursor, the highlights will be cleared (the second autocommand).
				local client = vim.lsp.get_client_by_id(event.data.client_id)
				if client and client.server_capabilities.documentHighlightProvider then
					vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
						buffer = event.buf,
						callback = vim.lsp.buf.document_highlight,
					})

					vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
						buffer = event.buf,
						callback = vim.lsp.buf.clear_references,
					})
				end
			end,
		})

		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

		-- local servers = {
		-- 	clangd = {},
		-- 	gopls = {},
		-- 	julials = {},
		-- 	lua_ls = {
		-- 		settings = {
		-- 			Lua = {
		-- 				completion = {
		-- 					callSnippet = "Replace",
		-- 				},
		-- 				diagnostics = { disable = { "missing-fields" } },
		-- 			},
		-- 		},
		-- 	},
		-- 	nil_ls = {},
		-- 	basedpyright = {},
		-- 	rust_analyzer = {},
		-- 	texlab = {},
		-- }
		--
		-- -- Ensure the servers and tools above are installed
		-- require("mason").setup()
		--
		-- local ensure_installed = vim.tbl_keys(servers or {})
		-- vim.list_extend(ensure_installed, {})
		-- require("mason-tool-installer").setup({ ensure_installed = ensure_installed })
		--
		-- require("mason-lspconfig").setup({
		-- 	handlers = {
		-- 		function(server_name)
		-- 			local server = servers[server_name] or {}
		-- 			-- This handles overriding only values explicitly passed
		-- 			-- by the server configuration above. Useful when disabling
		-- 			-- certain features of an LSP (for example, turning off formatting for tsserver)
		-- 			if server_name == "tsserver" then
		-- 				server_name = "ts_ls"
		-- 			end
		-- 			server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
		-- 			require("lspconfig")[server_name].setup(server)
		-- 		end,
		-- 	},
		-- })
	end,
}
