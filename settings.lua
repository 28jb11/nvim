vim.o.number = true             -- Enable line numbers
vim.o.relativenumber = true     -- Enable relative line numbers
vim.o.clipboard = "unnamedplus" -- Use system clipboard
vim.o.tabstop = 4               -- Number of spaces tabs count for
vim.o.timeoutlen = 500
vim.opt.fillchars = { eob = " " }
vim.opt.termguicolors = true
vim.cmd [[
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.html,*.css,*.json Prettier
]]
