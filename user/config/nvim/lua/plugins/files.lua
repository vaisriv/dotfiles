-- File Manager

return {
	--[[ {
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		keys = {
			{
				"<leader>-",
				function()
					require("yazi").yazi()
				end,
				desc = "[-] Open directory view in floating window",
			},
		},
		opts = {
			open_for_directories = false,
		},
	}, ]]
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({
				columns = { "icon" },
				keymaps = {
					["q"] = "actions.close",
					["<M-h>"] = "actions.select_split",
				},
				view_options = {
					show_hidden = true,
				},
			})
			require("which-key").add({
				{
					"<leader>-",
					"<cmd>Oil --float<cr>",
					desc = "[-] Open directory view in floating window",
					mode = { "n", "v" },
				},
			})
		end,
	},
}
