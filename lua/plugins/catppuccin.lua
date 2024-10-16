return {
	"catppuccin/nvim",
	name = "catpuccin",
	lazy = false,
	priority = 1000,
	enable = false,
	config = function()
		require("catppuccin").setup({
			flavor = "mocha",
		})
		vim.cmd("colorscheme catppuccin-mocha")
	end,
}
