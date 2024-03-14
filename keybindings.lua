local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Example: Map <Space> as the leader key
vim.g.mapleader = " "
map('n', '<Leader>w', ':w<CR>', opts)

-- Setup the keybinding for <Leader>e
map('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)

-- Key mappings for navigating window splits
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Terminal
map('n', '<leader>\\', '<cmd>lua ToggleTerminal()<CR>', opts)
map('t', '<leader>\\', '<C-\\><C-n><cmd>lua ToggleTerminal()<CR>', opts)

-- comment
map('n', '<leader>/', '<cmd>normal gcc<cr>', opts)
map('v', '<leader>/', '<cmd>normal gcc<cr>', opts)

-- Mapping for cycling to the next buffer
map('n', '<leader>bn', ':bnext<CR>', opts)

-- Mapping for cycling to the previous buffer
map('n', '<leader>bb', ':bprevious<CR>', opts)
