return {
	"WilliamHsieh/overlook.nvim",
	opts = {},

	-- Optional: set up common keybindings
	keys = {
		{ "<leader>p", function() require("overlook.api").peek_definition() end, desc = "Overlook: Peek definition" },
	},
}
