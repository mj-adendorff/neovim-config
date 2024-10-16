return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local tr = require("nvim-treesitter")
		local function location()
			return tr.statusline({ type_patterns = { "class" } })
		end
		require("lualine").setup({
			options = {

				globalstatus = true,
			},
			sections = {
				lualine_c = { location },
				lualine_x = { "filename" },
			},
		})
	end,
}
