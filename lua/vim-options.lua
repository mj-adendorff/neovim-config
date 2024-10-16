-- VIM SETUP
vim.cmd("set copyindent")
vim.cmd("set noexpandtab")
vim.cmd("set preserveindent")
vim.cmd("set softtabstop=0")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=-1")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set colorcolumn=120")

-- if using neovide
if vim.g.neovide then
	vim.o.guifont = "0xProto Nerd Font Mono:h10.0"
	vim.g.neovide_floating_shadow = true
end

-- uncomment these line to show invisibles
-- vim.cmd("set list")
-- vim.cmd("set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<")

vim.o.number = true
-- vim.o.relativenumber = true
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`
vim.opt.guicursor = "i:ver20-blinkon1,a:blinkon1"
-- MAPPINGS

--- clear search
vim.keymap.set("n", "<S-w>", "<C-w>w", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", ":split<CR>", { noremap = true, silent = true })
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
