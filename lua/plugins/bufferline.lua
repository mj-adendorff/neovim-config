return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	enabled = false,
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({})
	end,
	keys = {
		{ "<A-]>", "<cmd>BufferLineCycleNext<cr>", desc = "Cycle Buffer Next" },
		{ "<A-[>", "<cmd>BufferLineCyclePrev<cr>", desc = "Cycle Buffer Prev" },
	},
}
