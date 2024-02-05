local opt = vim.opt

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

opt.number = true
opt.relativenumber = true

opt.termguicolors = true

local tab_spaces = 4
opt.expandtab = true
opt.tabstop = tab_spaces
opt.softtabstop = tab_spaces
opt.shiftwidth= tab_spaces

-- opt. signcolumn or something

opt.clipboard = "unnamedplus"


vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
