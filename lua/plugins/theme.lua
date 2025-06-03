return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		enabled = true,
		config = function()
			require("tokyonight").setup()
			vim.cmd("colorscheme tokyonight")
		end,
	},
	{
		"tiagovla/tokyodark.nvim",
		lazy = false,
		priority = 1000,
		enabled = false,
		config = function()
			require("tokyodark").setup()
			-- vim.cmd("colorscheme tokyodark")
		end,
	},
	{
		"mj-adendorff/onedark.nvim",
		lazy = false,
		enabled = false,
		name = "onedark",
		priority = 1000,
	},
	{
		"catppuccin/nvim",
		name = "catpuccin",
		lazy = false,
		priority = 1000,
		enable = false,
		config = function()
			require("catppuccin").setup({
				flavor = "mocha",
			})
			-- vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
}
