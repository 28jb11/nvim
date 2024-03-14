-- Setup nvim-cmp for autocompletion
local cmp = require('cmp')
cmp.setup({
	snippet = {
		expand = function(args)
			-- Requires Luasnip
			require('luasnip').lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	}, {
		{ name = 'buffer' },
	})
})

-- Common on_attach function to set up keymaps and other buffer-local configurations
local on_attach = function(client, bufnr)
	local buf_set_keymap = function(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local buf_set_option = function(...) vim.api.nvim_buf_set_option(bufnr, ...) end

	-- Example: Enable completion triggered by <c-x><c-o>
	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

	-- Format on save
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_augroup("LspAutocommands", { clear = true })
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = "LspAutocommands",
			buffer = bufnr,
			callback = function() vim.lsp.buf.format({ async = false }) end
		})
	end
end

-- Setup capabilities for nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- LSP server configurations
local lspconfig = require('lspconfig')

-- Go language server
lspconfig.gopls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}

-- Lua language server
lspconfig.lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = { version = 'LuaJIT' },
			diagnostics = { globals = { 'vim' } },
			workspace = { library = vim.api.nvim_get_runtime_file("", true) },
			telemetry = { enable = false },
		},
	},
}

-- Custom Templ language server setup (example)
lspconfig.templ.setup {
	on_attach = on_attach,
	capabilities = capabilities,
	-- Specify command if templ-ls isn't globally available
	-- cmd = { "path/to/templ-ls", "--stdio" },
}

-- FileType association for Templ
vim.filetype.add({ extension = { templ = "templ" } })
