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
			{ "<leader> ", group = "search" },
			{ "<leader>f", group = "search" },
			{ "<leader>fg", group = "search" },
			{ "]", group = "next" },
			{ "[", group = "prev" },
			{ "<leader>b", group = "buffer" },
		},
	},
})
