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
