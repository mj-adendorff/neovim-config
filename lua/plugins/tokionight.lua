return {
	"folke/tokyonight.nvim",
	lazy = false,
	enabled = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup()
	end,
}
