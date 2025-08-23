return {
	"sindrets/diffview.nvim",
	lazy = false,
	keys = {
		{ "<leader>dd", "<cmd>DiffviewFileHistory %s<cr>", desc = "Diffview" },
		{ "<leader>dx", "<cmd>DiffviewClose<cr>",          desc = "Diffview" },
	}
}
