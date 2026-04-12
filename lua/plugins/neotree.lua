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
