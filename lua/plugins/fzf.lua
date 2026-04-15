vim.pack.add({
	{ src = gh("ibhagwan/fzf-lua") },
})

local fzf = require("fzf-lua")
fzf.setup({
	"telescope",
})

vim.keymap.set("n", "<leader> ", fzf.files, {})
vim.keymap.set("n", "<leader>fg", fzf.git_files, {})
vim.keymap.set("n", "<leader>sg", fzf.live_grep, {})
vim.keymap.set("n", "<leader>/", fzf.live_grep, {})
