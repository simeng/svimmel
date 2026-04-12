require("helpers")

vim.g.loaded_netrw = true
vim.g.loaded_netrwPlugin = true
vim.g.mapleader = " "

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.conceallevel = 0
vim.opt.smarttab = true

vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.signcolumn = "yes:1"
vim.opt.wrap = true

require("plugins.telescope")
require("plugins.lsp")
require("plugins.conform")
require("plugins.lualine")
require("plugins.noice")
require("plugins.treesitter")
require("plugins.neotree")
require("plugins.bufferline")
require("plugins.sleuth")

require("config.keybinds")
require("config.theme")
