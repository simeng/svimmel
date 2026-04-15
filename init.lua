require("helpers")

vim.g.loaded_netrw = true
vim.g.loaded_netrwPlugin = true
vim.g.mapleader = " "

vim.opt.completeopt = "menu,popup,preview,noinsert,preinsert"
vim.opt.autocomplete = true

vim.opt.ignorecase = false
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

-- Fuzzy file finder
require("plugins.fzf")

-- Language servers and autocomplete setup
require("plugins.lsp")

-- Smarter autoformatting
require("plugins.conform")

-- Buffer line (bottom)
require("plugins.lualine")

-- Nicer ui components
require("plugins.noice")

-- Helper for syntax / indent / etc
require("plugins.treesitter")

-- Tree view (left)
require("plugins.neotree")

-- Tab line / Buffers as tabs (top)
require("plugins.bufferline")

-- Reads editorconfig / guesses sw/ts/et etc.
require("plugins.sleuth")

-- Extra keybinds and which-key setup
require("config.keybinds")

-- Theme
require("config.theme")
