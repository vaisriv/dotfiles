-- LaTeX plugins

return {
	"iurimateus/luasnip-latex-snippets.nvim",
	dependencies = {
		"lervag/vimtex",
	},
	config = function()
		require("luasnip-latex-snippets").setup({ use_treesitter = true })
		require("which-key").register({
			v = {
				name = "[V]imTeX",
				b = { "<cmd>VimtexCompile<cr>", "[B]uild" },
				v = { "<cmd>VimtexView<cr>", "[V]iew" },
				m = { "<cmd>VimtexToggleMain<cr>", "[M]ain" },
				c = { "<cmd>VimtexClean<cr>", "[C]lean" },
				l = { "<cmd>VimtexLog<cr>", "[L]og" },
				e = { "<cmd>VimtexErrors<cr>", "[E]rrors" },
				r = { "<cmd>VimtexReload<cr>", "[R]eload" },
			},
		}, { prefix = "<leader>" })
		local map = vim.keymap.set
		map("i", "//", "\\", { desc = "backslash" })
	end,
}
