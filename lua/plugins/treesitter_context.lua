return {
	"nvim-treesitter/nvim-treesitter-context",
	enabled = true,
	config = function()
		require("treesitter-context").setup()
	end,
}
