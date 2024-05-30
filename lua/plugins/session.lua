return {
	"folke/persistence.nvim",
	event = "BufReadPre", -- this will only start session saving when an actual file was opened
	opts = {
		-- add any custom options here
	},
	config = function()
		require("persistence").setup()
		vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})
		vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})
		vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})
	end,
}
