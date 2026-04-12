gh = function(d)
	return "https://github.com/" .. d
end

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

require("config.keybinds")

vim.pack.add({
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		data = {
			on_update = function()
				vim.cmd("TSUpdate")
			end,
		},
	},
})

vim.pack.add({
	{ src = "https://github.com/tpope/vim-sleuth" },
})

vim.pack.add({
	{ src = gh("MunifTanjim/nui.nvim") },
	{ src = gh("nvim-lua/plenary.nvim") },
	{ src = gh("nvim-neo-tree/neo-tree.nvim") },
})

local tree_command = require("neo-tree.command")
vim.keymap.set("n", "<leader>e", function()
	tree_command.execute({ toggle = true })
end)
require("neo-tree").setup({
	sources = { "filesystem", "buffers", "git_status" },
})

vim.pack.add({
	{ src = gh("nvim-tree/nvim-web-devicons") },
	{ src = gh("akinsho/bufferline.nvim") },
})

require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp"
	}
})

vim.pack.add({
	{ src = gh("folke/tokyonight.nvim") },
})
local tokyonight = require("tokyonight")
tokyonight.setup({ transparent = true })
tokyonight.load()
vim.cmd("colorscheme tokyonight")
