return {
	"catppuccin/nvim",
	name = "catpuccin",
	lazy = false,
	priority = 1000,
	enable = false,
	config = function()
		require("catppuccin").setup({
			flavor = "latte",
		})
		-- vim.cmd("colorscheme catppuccin-latte")
	end,
}
