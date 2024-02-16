local opt = vim.o

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
opt.shiftwidth = tab_spaces

opt.signcolumn = "yes"

opt.clipboard = "unnamedplus"

opt.splitbelow = true
opt.splitright = true

opt.colorcolumn = "80"
opt.cursorline = true

opt.completeopt = "menuone,noselect"

opt.ignorecase = true

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "p", '"_dP')
