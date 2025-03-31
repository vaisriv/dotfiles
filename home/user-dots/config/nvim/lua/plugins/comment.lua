-- Fluidly comment visual regions/lines

return {
	"numToStr/Comment.nvim",
	opts = {
		toggler = { line = "<leader>cc", block = "<leader>cb" },
		opleader = { line = "<leader>cc", block = "<leader>cb" },
		extra = { above = "<leader>cO", below = "<leader>co", eol = "<leader>cA" },
		mappings = { basic = true, extra = true },
	},
}
