-- VIM SETUP
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set colorcolumn=120")
vim.cmd("set shiftwidth=4")
vim.o.number = true
-- vim.o.relativenumber = true
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`
-- MAPPINGS

--- clear search
vim.keymap.set("n", "<M-l>", ":let @/ = ''<CR>", {noremap = true, silent = true})
vim.keymap.set("n", '<leader>"', ":split<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<S-w>", "<C-w>w", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>%", ":vsplit<CR>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
-- Bufferline
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})
