vim.pack.add({
    { src = gh("mason-org/mason-lspconfig.nvim") },
    { src = gh("mason-org/mason.nvim") },
	{ src = gh("neovim/nvim-lspconfig") },
})

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "emmet_ls", "lua_ls", "rust_analyzer", "eslint", "ts_ls", "tailwindcss" }
}

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp_completion", { clear = true }),
	callback = function(args)
		local client_id = args.data.client_id
		if not client_id then
			return
		end
		local client = vim.lsp.get_client_by_id(client_id)
		if client and client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client_id, args.buf, {
				autotrigger = true,
			})
		end
	end,
})

