require("which-key").setup {
    -- Your configuration here
    -- This example uses default settings; check the documentation for customization options
}

-- Example keybinding setup with which-key
local wk = require("which-key")
wk.register({
    ["<leader>"] = {
        w = { ":w!<CR>", "Save" },
        q = { ":q!<CR>", "Quit" },
        e = { ":NvimTreeToggle<CR>", "Explorer" },
        f = {
            name = "+Find",
            f = { ":Telescope find_files<CR>", "Find Files" },
            g = { ":Telescope live_grep<CR>", "Find Text" },
        },
    },
})
