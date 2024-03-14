require("mason").setup()

require("mason-lspconfig").setup({
    -- Here you can specify which LSP servers should be automatically installed by Mason
    -- For example, to ensure 'gopls' and 'tailwindcss' are installed, you might do:
    ensure_installed = { "gopls", "tailwindcss", "html", "tsserver", "cssls" },
    -- automatic_installation can be true to automatically install LSP servers
    automatic_installation = true,
})
