vim.pack.add({
	{ src = gh("nvim-tree/nvim-web-devicons") },
	{ src = gh("akinsho/bufferline.nvim") },
})

require("bufferline").setup({
	options = {
		diagnostics = "nvim_lsp"
	}
})
