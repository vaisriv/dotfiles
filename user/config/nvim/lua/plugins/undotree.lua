-- UndoTree

return {
	"mbbill/undotree",
	config = function()
		local map = vim.keymap.set

		map("i", "//", "\\", { desc = "backslash" })
		map("n", "<leader>U", "<cmd>UndotreeToggle<CR>", { desc = "Undo tree" })
		map("n", "<leader>sf", "<cmd>Telescope frecency<CR>", { desc = "search frecency" })
		map("n", "<leader>sp", "<cmd>Telescope projects<CR>", { desc = "search projects" })
	end,
}
