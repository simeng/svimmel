gh = function(d)
	return "https://github.com/" .. d
end

treesitter_enable = function(filetype)
	local WAIT_TIME = 1000 * 30 -- 30 seconds
	local lang = vim.treesitter.language.get_lang(filetype)
	require("nvim-treesitter").install(lang):wait(WAIT_TIME)
	vim.api.nvim_create_autocmd("FileType", {
		desc = "Enable Treesitter features for " .. lang,
		pattern = vim.treesitter.language.get_filetypes(lang),
		callback = function()
			if vim.treesitter.query.get(lang, "highlights") then
				vim.treesitter.start()
			end
			if vim.treesitter.query.get(lang, "indents") then
				vim.bo.indentexpr = "v:lua.require('nvim-treesitter').indentexpr()"
			end
			if vim.treesitter.query.get(lang, "folds") then
				vim.wo.foldmethod = "expr"
				vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
				vim.wo.foldlevel = 99
			end
		end,
	})
end
