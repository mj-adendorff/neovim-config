-- VIM SETUP
vim.cmd("set copyindent")
vim.cmd("set noexpandtab")
vim.cmd("set preserveindent")
vim.cmd("set softtabstop=0")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
--vim.cmd("set set indentexpr=")
vim.cmd("set softtabstop=-1")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set colorcolumn=120")
vim.o.number = true
-- vim.o.relativenumber = true
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`
-- MAPPINGS

--- clear search
vim.keymap.set("n", "<S-h>", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", "<C-w>w", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true })

local sign = function(opts)
	vim.fn.sign_define(opts.name, {
		texthl = opts.name,
		text = opts.text,
		numhl = "",
	})
end

sign({ name = "DiagnosticSignError", text = "" })
sign({ name = "DiagnosticSignWarn", text = "" })
sign({ name = "DiagnosticSignHint", text = "" })
sign({ name = "DiagnosticSignInfo", text = "" })

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	update_in_insert = true,
	underline = true,
	severity_sort = false,
	float = {
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})

vim.cmd([[
    set signcolumn=yes
    autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
