vim.pack.add({
	{ src = gh("folke/tokyonight.nvim") },
})
local tokyonight = require("tokyonight")
tokyonight.setup({ transparent = true })
tokyonight.load()
vim.cmd("colorscheme tokyonight")
