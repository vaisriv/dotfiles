return {
	{
		"HakonHarnes/img-clip.nvim",
		event = "VeryLazy",
		opts = {
			-- add options here
			-- or leave it empty to use the default settings
		},
		keys = {
			{ "<leader>ip", "<cmd>PasteImage<cr>", desc = "[P]aste image from system clipboard" },
		},
	},
	{
		"ellisonleao/carbon-now.nvim",
		lazy = true,
		cmd = "CarbonNow",
		---@param opts cn.ConfigSchema
		opts = {
			base_url = "https://carbon.now.sh/",
			options = {
				bg = "gray",
				drop_shadow_blur = "68px",
				drop_shadow = false,
				drop_shadow_offset_y = "20px",
				font_family = "JetBrains Mono",
				font_size = "18px",
				line_height = "133%",
				line_numbers = true,
				theme = "one-dark",
				-- titlebar = "Made with carbon-now.nvim",
				watermark = false,
				width = "680",
				window_theme = "sharp",
				padding_horizontal = "0px",
				padding_vertical = "0px",
			},
		},
	},
}
