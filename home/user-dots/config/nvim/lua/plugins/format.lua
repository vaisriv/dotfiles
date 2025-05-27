-- Autoformatting

return {
	"stevearc/conform.nvim",
	lazy = false,
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = true,
		notify_no_formatters = true,
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 500,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff" },
		},
	},
}
