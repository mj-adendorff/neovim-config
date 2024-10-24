return {
	"glepnir/dashboard-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local config = {}

		config.mru = {
			label = " Recent Files",
			limit = 10,
		}
		config.project = {
			label = " Recent Projects",
			limit = 10,
		}

		config.shortcut = {
			{
				desc = "󰠮  Notes ",
				action = "enew | set filetype=markdown",
				group = "@string",
				key = "n",
			},
			{
				desc = " 󰱼  File ",
				action = "Telescope find_files find_command=rg,--hidden,--files",
				group = "@string",
				key = "fF",
			},
			{
				desc = "   Update ",
				action = "Lazy sync",
				group = "@string",
				key = "u",
			},
			{
				desc = " 󰓅  Profile ",
				action = "Lazy profile",
				group = "@string",
				key = "p",
			},
			{
				desc = " 󰅙  Quit ",
				action = "q!",
				group = "DiagnosticError",
				key = "q",
			},
		}

		config.week_header = { enable = true }
		config.footer = { "", "󰛨  Set up systems, not goals. " }
		config.packages = { enable = true }

		require("dashboard").setup({
			theme = "hyper",
			config = config,
		})
	end,
	lazy = false,
	priority = 999,
}
