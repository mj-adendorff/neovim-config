-- VIM SETUP
--vim.cmd("set copyindent")
--vim.cmd("set noexpandtab")
--vim.cmd("set preserveindent")
--vim.cmd("set softtabstop=0")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=-1")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set colorcolumn=120")
vim.cmd("set noexpandtab")
-- hard tabs for python files
vim.cmd("autocmd FileType python setlocal noexpandtab")
vim.cmd("set relativenumber")
vim.cmd("set mousescroll=ver:10")

-- if using neovide
if vim.g.neovide then
	vim.o.guifont = "0xProto Nerd Font Mono:h11"
	vim.g.neovide_floating_shadow = true
	vim.keymap.set({ "n", "x" }, "<C-S-C>", '"+y', { desc = "Copy system clipboard" })
	vim.keymap.set({ "n", "x" }, "<C-S-V>", '"+p', { desc = "Paste system clipboard" })
	vim.g.neovide_input_use_logo = 1
	vim.api.nvim_set_keymap("v", "<sc-c>", '"+y', { noremap = true })
	vim.api.nvim_set_keymap("n", "<sc-v>", 'l"+P', { noremap = true })
	vim.api.nvim_set_keymap("v", "<sc-v>", '"+P', { noremap = true })
	-- vim.api.nvim_set_keymap("c", "<sc-v>", '<C-o>l<C-o>"+<C-o>P<C-o>l', { noremap = true })
	vim.api.nvim_set_keymap("c", "<sc-v>", "<C-R>0", { noremap = true })
	vim.api.nvim_set_keymap("i", "<sc-v>", '<ESC>l"+Pli', { noremap = true })
	vim.api.nvim_set_keymap("t", "<sc-v>", '<C-\\><C-n>"+Pi', { noremap = true })
end

-- uncomment these line to show invisibles
-- vim.cmd("set list")
-- vim.cmd("set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<")

vim.o.number = true
-- vim.o.relativenumber = true
vim.g.mapleader = " "       -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`
vim.opt.guicursor = "i:ver20-blinkon1,a:blinkon1"
-- MAPPINGS

--- clear search
vim.keymap.set("n", "<S-w>", "<C-w>w", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true })

-- visual mode stuff
vim.keymap.set("v", "<", "<gv", { desc = "Indent left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right" })

-- Move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text up" })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.diagnostic.config({
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = '',
			[vim.diagnostic.severity.WARN] = '',
			[vim.diagnostic.severity.HINT] = '',
			[vim.diagnostic.severity.INFO] = '',
		}
	},
	virtual_text = false,
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})

vim.keymap.set("n", "<leader>tt", function()
	local themery = require("themery")
	local currentTheme = themery.getCurrentTheme()
	if currentTheme and currentTheme.name == "gruvbox light" then
		themery.setThemeByName("gruvbox dark", true)
	else
		themery.setThemeByName("gruvbox light", true)
	end
end, { noremap = true })

vim.cmd([[
    set signcolumn=yes
    autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
