return {
	"WilliamHsieh/overlook.nvim",
	opts = {},

	-- Optional: set up common keybindings
	keys = {
		{ "P", function() require("overlook.api").peek_definition() end, desc = "Overlook: Peek definition" },
		{ "C", function() require("overlook.api").close_all() end,       desc = "Overlook: Close all popup" },
		{ "R", function() require("overlook.api").restore_popup() end,   desc = "Overlook: Restore popup" },
	},
}
