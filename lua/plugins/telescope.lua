vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
})

local builtin = require('telescope.builtin')

require('telescope').setup({})

vim.keymap.set("n", "<leader> ", builtin.find_files, {})
vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
