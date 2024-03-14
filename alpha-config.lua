local ascii_art = [[

░   ░░░  ░░        ░░░      ░░░  ░░░░  ░░        ░░  ░░░░  ░
▒    ▒▒  ▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒▒   ▒▒   ▒
▓  ▓  ▓  ▓▓      ▓▓▓▓  ▓▓▓▓  ▓▓▓  ▓▓  ▓▓▓▓▓▓  ▓▓▓▓▓        ▓
█  ██    ██  ████████  ████  ████    ███████  █████  █  █  █
█  ███   ██        ███      ██████  █████        ██  ████  █
                                                            
]]
require'alpha'.setup(require'alpha.themes.dashboard'.config)

local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

-- Set header
dashboard.section.header.val = ascii_art

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file", ":Telescope find_files <CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles <CR>"),
    dashboard.button( "c", "  > Config"   , ":e ~/.config/nvim/init.lua <CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

-- Set footer
dashboard.section.footer.val = "Hoo-di-hoo!"

alpha.setup(dashboard.config)

-- Disable syntax highlighting for the alpha buffer
vim.cmd [[au FileType alpha ++once setlocal nonumber norelativenumber]]

