-- Useful plugin to show you pending keybinds.

return {
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function() -- This is the function that runs, AFTER loading
		local opts = {
			icons = {
				mappings = false,
			},
		}

		local wk = require("which-key")
		wk.setup(opts)
		wk.add({
			-- { "<leader>z", group = "[Z]ettel" },
			{ "<leader>c", group = "[C]omment", mode = { "n", "v" } },
			{
				"<leader>l",
				group = "[L]SP",
				{ "<leader>lg", group = "[G]o to" },
			},
			{ "<leader>p", group = "[P]arenthesis (surround)", mode = { "n", "v" } },
			{ "<leader>s", group = "[S]earch" },
			{ "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "[U]ndoTree" },
			{ "<leader>U", "<cmd>UndotreeToggle<cr>", desc = "[U]ndoTree", hidden = true },
			{
				"<leader>v",
				group = "[V]imTeX",
				{ "<leader>vb", "<cmd>VimtexCompile<cr>", desc = "[B]uild" },
				{ "<leader>vc", "<cmd>VimtexClean<cr>", desc = "[C]lean" },
				{ "<leader>ve", "<cmd>VimtexErrors<cr>", desc = "[E]rrors" },
				{ "<leader>vl", "<cmd>VimtexLog<cr>", desc = "[L]og" },
				{ "<leader>vm", "<cmd>VimtexToggleMain<cr>", desc = "[M]ain" },
				{ "<leader>vr", "<cmd>VimtexReload<cr>", desc = "[R]eload" },
				{ "<leader>vv", "<cmd>VimtexView<cr>", desc = "[V]iew" },
			},
			{ "<leader>i", group = "[I]mage", mode = { "n", "v" } },

			-- exit neovim with qq
			-- { "<leader>q", group = "[Q]uit", mode = { "n", "v" } },

			-- Remove 'q' bindings because I do not like macros
			{ "q", "<Nop>", desc = "Built-In Record Macro", mode = { "n" }, hidden = true },

			-- Remove 'g' bindings that do not conform to the [G]o intention
			{ "gcc", "<Nop>", desc = "Built-In Linewise Comment", mode = { "n" }, hidden = true },
			{ "gc", "<Nop>", desc = "Built-In Comment", mode = { "n", "v" }, hidden = true },
			{ "gu", "<Nop>", desc = "Built-In Lowercase", mode = { "n", "v" }, hidden = true },
			{ "gU", "<Nop>", desc = "Built-In Uppercase", mode = { "n", "v" }, hidden = true },
			{ "g~", "<Nop>", desc = "Built-In ToggleCase", mode = { "n", "v" }, hidden = true },
		})
	end,
}
