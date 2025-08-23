return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.jdtls.setup({})
		lspconfig.lua_ls.setup({})
		lspconfig.ts_ls.setup({})
		lspconfig.gopls.setup({})
		lspconfig.basedpyright.setup({})
		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
		vim.keymap.set({ "v", "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
