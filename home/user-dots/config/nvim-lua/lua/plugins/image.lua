return {
	{
		"HakonHarnes/img-clip.nvim",
		event = "VeryLazy",
		ft = { "tex", "markdown" },
		opts = {
			default = {
				-- file and directory options
				dir_path = "images", ---@type string | fun(): string
				extension = "png", ---@type string | fun(): string
				file_name = "%Y-%m-%d-%H-%M-%S", ---@type string | fun(): string
				use_absolute_path = false, ---@type boolean | fun(): boolean
				relative_to_current_file = false, ---@type boolean | fun(): boolean

				-- template options
				template = "$FILE_PATH", ---@type string | fun(context: table): string
				url_encode_path = false, ---@type boolean | fun(): boolean
				relative_template_path = true, ---@type boolean | fun(): boolean
				use_cursor_in_template = true, ---@type boolean | fun(): boolean
				insert_mode_after_paste = true, ---@type boolean | fun(): boolean

				-- prompt options
				prompt_for_file_name = true, ---@type boolean | fun(): boolean
				show_dir_path_in_prompt = true, ---@type boolean | fun(): boolean

				-- base64 options
				max_base64_size = 10, ---@type number | fun(): number
				embed_image_as_base64 = false, ---@type boolean | fun(): boolean

				-- image options
				process_cmd = "", ---@type string | fun(): string
				copy_images = true, ---@type boolean | fun(): boolean
				download_images = true, ---@type boolean | fun(): boolean

				-- drag and drop options
				drag_and_drop = {
					enabled = false, ---@type boolean | fun(): boolean
					insert_mode = false, ---@type boolean | fun(): boolean
				},
			},
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
