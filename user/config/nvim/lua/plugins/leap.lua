-- Leap to any spot in current buffer

return {
	"ggandor/leap.nvim",
	config = function()
		require("leap").create_default_mappings()
	end,
}
