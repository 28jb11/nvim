package.path = package.path .. ";" .. vim.fn.stdpath("config") .. "/?.lua"  -- set path for config files

require('settings')    -- General Neovim settings and options
require('keybindings') -- Custom key mappings
require('plugins')     -- Plugin management
-- require('lspconfig').gopls.setup{
--     on_attach = on_attach,
-- }
require('mason-config') -- Mason
require('nvim-tree')
require('nvim-tree-config')
require('terminal')
require('which-key-config')
require('alpha-config')
require('lsp-config')
require('comment-config')
require('bufferline-config')
vim.cmd.colorscheme "catppuccin"
