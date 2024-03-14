local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	-- Lazy self-management
	{ 'folke/lazy.nvim' },

	-- LSP and Autocompletion
	{ 'neovim/nvim-lspconfig' }, -- Common configurations for Neovim's LSP client
	{ 'hrsh7th/nvim-cmp' }, -- Autocompletion plugin
	{ 'hrsh7th/cmp-nvim-lsp' }, -- LSP source for nvim-cmp
	{ 'saadparwaiz1/cmp_luasnip' }, -- Snippets source for nvim-cmp
	{ 'L3MON4D3/LuaSnip' }, -- Snippets plugin
	{ 'onsails/lspkind-nvim' }, -- Adds vscode-like pictograms to neovim lsp completion items

	-- GitHub Copilot (ensure you have access before installing)
	{ 'github/copilot.vim' },

	-- Syntax highlighting and additional language support
	{ 'nvim-treesitter/nvim-treesitter',  run = ':TSUpdate' }, -- Enhanced syntax highlighting
	{ 'mattn/emmet-vim' },                            -- Support for HTML/CSS shorthand

	-- Go development
	{ 'fatih/vim-go',                     run = ':GoUpdateBinaries' }, -- Go development plugin

	-- Tailwind CSS and HTML
	-- Ensure you've installed the Tailwind CSS language server as mentioned earlier.
	-- HTMX support can be achieved through general HTML tooling and syntax highlighting.

	-- Other plugins as per your preference
	-- Theme, file explorer, status line, etc.

	-- Mason
	{ 'williamboman/mason.nvim' },
	{ 'williamboman/mason-lspconfig.nvim' },
	{ 'neovim/nvim-lspconfig' },

	-- Nvim tree
	{ 'kyazdani42/nvim-tree.lua',         requires = 'kyazdani42/nvim-web-devicons' },

	{ 'mattn/emmet-vim' },
	{ 'neovim/nvim-lspconfig' },
	{ 'jose-elias-alvarez/null-ls.nvim' },
	{ 'MunifTanjim/prettier.nvim' },

	{ 'nvim-web-devicons' },

	{ 'folke/which-key.nvim' },

	{
		'goolord/alpha-nvim',
		dependencies = {
			'nvim-tree/nvim-web-devicons',
			'nvim-lua/plenary.nvim'
		},
		config = function()
			require 'alpha'.setup(require 'alpha.themes.theta'.config)
		end
	},
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},
	{ 'nvim-telescope/telescope.nvim' },
	{
		"akinsho/bufferline.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
	},
	{ 'catppuccin/nvim' },
})
