local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = " "

opt.number = true
opt.relativenumber = true

opt.termguicolors = true

opt.scrolloff = 30

opt.wrap = false

local tab_spaces = 4
opt.expandtab = true
opt.tabstop = tab_spaces
opt.softtabstop = tab_spaces
opt.shiftwidth= tab_spaces

opt.signcolumn="yes" 

opt.clipboard = "unnamedplus"

opt.splitbelow = true
opt.splitright = true

vim.o.completeopt = "menuone,noselect"

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
