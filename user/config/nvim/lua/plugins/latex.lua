-- LaTeX tools

return {
	"iurimateus/luasnip-latex-snippets.nvim",
	dependencies = {
		"lervag/vimtex",
	},
	config = function()
		require("luasnip-latex-snippets").setup({ use_treesitter = true })

		vim.g.vimtex_fold_enabled = true

		-- disabled because zathura is refusing to open the file for some reason :)
		-- vim.g.vimtex_view_method = "zathura"
	end,
}
