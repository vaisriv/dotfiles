-- Markdown Tools

return {
	-- {
	-- 	"iamcco/markdown-preview.nvim",
	-- 	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	-- 	ft = { "markdown" },
	-- 	build = function()
	-- 		vim.fn["mkdp#util#install"]()
	-- 	end,
	-- },
	-- {
	-- 	"wallpants/github-preview.nvim",
	-- 	cmd = { "GithubPreviewToggle" },
	-- 	keys = { "<leader>mpt" },
	-- 	opts = {
	-- 		-- config goes here
	-- 	},
	-- 	config = function(_, opts)
	-- 		local gpreview = require("github-preview")
	-- 		gpreview.setup(opts)
	--
	-- 		local fns = gpreview.fns
	-- 		vim.keymap.set("n", "<leader>mpt", fns.toggle)
	-- 		vim.keymap.set("n", "<leader>mps", fns.single_file_toggle)
	-- 		vim.keymap.set("n", "<leader>mpd", fns.details_tags_toggle)
	-- 	end,
	-- },
	{
		"tadmccorkle/markdown.nvim",
		ft = { "markdown" }, -- or 'event = "VeryLazy"'
		opts = {
			-- configuration here or empty for defaults
		},
	},
}
