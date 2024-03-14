require 'nvim-tree'.setup {
	view = {
		width = 28,
	},
	-- Your configuration here
}

vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
