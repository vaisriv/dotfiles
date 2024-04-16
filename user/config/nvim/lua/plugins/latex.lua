-- LaTeX plugins

return {
	"iurimateus/luasnip-latex-snippets.nvim",
	dependencies = {
		"lervag/vimtex",
	},
	config = function()
		require("luasnip-latex-snippets").setup({ use_treesitter = true })
	end,
}
