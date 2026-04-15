vim.keymap.set("n", "gd", function()
	vim.lsp.buf.definition()
end)
vim.keymap.set("i", "<C-h>", function()
	vim.lsp.buf.signature_help()
end)
vim.keymap.set("n", "<leader>ca", function()
	vim.lsp.buf.code_action({
		filter = function(action)
			return not action.disabled
		end,
	})
end)

vim.keymap.set("n", "<leader>rr", function()
	vim.cmd("restart")
end)
vim.keymap.set("n", "<leader>bd", function()
	vim.cmd("bdelete")
end)

vim.pack.add({
	{ src = gh("folke/which-key.nvim") },
})

local wk = require("which-key")
vim.keymap.set("n", "<leader>?", function()
	wk.show({ global = false })
end)

wk.setup({
	preset = "helix",
	spec = {
		{
			mode = { "n", "x" },
			{ "<leader>c",  group = "Code" },
			{ "<leader>f",  group = "Search" },
			{ "<leader>s",  group = "Search" },
			{ "<leader>r",  group = "Nvim" },
			{ "]",          group = "Next" },
			{ "[",          group = "Prev" },
			{ "<leader>b",  group = "Buffer" },
			{ "<leader> ",  desc = "Find file" },
			{ "<leader>/",  desc = "Grep file" },
			{ "<leader>ca", desc = "Action" },
			{ "<leader>e",  desc = "Tree" },
			{ "<leader>fg", desc = "Git files" },
			{ "<leader>sg", desc = "Grep file" },
			{ "<leader>rr", desc = "Reload nvim" },
			{ "<leader>bd", desc = "Close buffer" },
		},
	},
})
