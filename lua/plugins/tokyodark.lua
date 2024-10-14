return {
	"tiagovla/tokyodark.nvim",
	lazy = false,
    enabled = false;
	priority = 1000,
	config = function()
		require("tokyodark").setup()
	end,
}
