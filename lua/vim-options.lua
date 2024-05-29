-- VIM SETUP
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set shiftwidth=4")
vim.o.number = true
vim.o.relativenumber = true
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`
-- MAPPINGS
--- clear search
vim.keymap.set("n", '<leader>"', ":split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<M-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>%", ":vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<M-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<M-h>", "<C-w>h", { noremap = true, silent = true })
-- Bufferline
vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
