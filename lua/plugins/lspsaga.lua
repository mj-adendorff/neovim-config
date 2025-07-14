return {
	'nvimdev/lspsaga.nvim',
	config = function()
		require('lspsaga').setup({})
	end,
	dependencies = {
		'nvim-treesitter/nvim-treesitter', -- optional
		'nvim-tree/nvim-web-devicons', -- optional
	},
	keys = {
		{ "<leader>rr", "<cmd>Lspsaga finder<cr>",         desc = "References" },
		{ "<leader>rc", "<cmd>Lspsaga incoming_calls<cr>", desc = "References" },
	}
}
