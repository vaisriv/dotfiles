-- Collection of various small, discrete plugins/modules

return {
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [']quote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - paiw) - [P]arenthesis (Surround) [A]dd [I]nner [W]ord [)]Paren
		-- - pd'   - [P]arenthesis [D]elete [']quotes
		-- - pr)'  - [S]arenthesis [R]eplace [)] [']
		require("mini.surround").setup({
			mappings = {
				add = "<leader>pa", -- Add surrounding in Normal and Visual modes
				delete = "<leader>pd", -- Delete surrounding
				find = "<leader>pf", -- Find surrounding (to the right)
				find_left = "<leader>pF", -- Find surrounding (to the left)
				highlight = "<leader>ph", -- Highlight surrounding
				replace = "<leader>pr", -- Replace surrounding
				update_n_lines = "<leader>pn", -- Update `n_lines`
			},
		})

		require("mini.notify").setup({
			timeout = 5000,
		})

		require("mini.starter").setup({
			header = " ⟋|､\n(°､ ｡ 7\n |､  ~ヽ\n じしf_,)ノ\n",
			footer = "",
			items = {
				{
					action = "<NOP>",
					name = "   nvim",
					section = "",
				},
			},
			query_updaters = "",
			silent = true,
			content_hooks = {
				require("mini.starter").gen_hook.adding_bullet(""),
				require("mini.starter").gen_hook.aligning("center", "center"),
			},
		})

		require("mini.tabline").setup()

		require("mini.statusline").setup({ use_icons = vim.g.have_nerd_font })

		---@diagnostic disable-next-line: duplicate-set-field
		require("mini.statusline").section_location = function()
			return "%2l:%-2v"
		end
	end,
}
