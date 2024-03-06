local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = " "

opt.number = true
opt.relativenumber = true

opt.mouse = "a"

opt.termguicolors = true

opt.scrolloff = 30

opt.wrap = false

local tab_spaces = 4
opt.expandtab = true
opt.tabstop = tab_spaces
opt.softtabstop = tab_spaces
opt.shiftwidth = tab_spaces

opt.clipboard = "unnamedplus"

opt.splitbelow = true
opt.splitright = true

opt.cursorline = true
opt.textwidth = 80
opt.colorcolumn = "80"
opt.signcolumn = "yes"

opt.completeopt = "menuone,noselect"

opt.ignorecase = true
opt.smartcase = true

opt.updatetime = 250
opt.timeoutlen = 300

opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.inccommand = "split"

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "p", '"_dP')
