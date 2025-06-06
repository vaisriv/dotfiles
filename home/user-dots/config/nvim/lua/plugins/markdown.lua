-- Markdown Tools

return {
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	{
		"tadmccorkle/markdown.nvim",
		ft = { "markdown" }, -- or 'event = "VeryLazy"'
		opts = {
			-- configuration here or empty for defaults
		},
	},
}
