require('bufferline').setup{
  highlights = {
    buffer_selected = {
      bold = true,
	  italic = true,
      fg = '#ffffff',       -- Sets the foreground color to white
      -- bg = '#ff5555',       -- Sets the background color to a noticeable color
      -- Other attributes can be set here as needed
    },
    -- You can also customize other highlight groups as needed
  },
  options = {
    numbers = "ordinal",
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
	separator_style = "slope",
    offsets = {
        {
            filetype = "NvimTree",
            text = "Directory",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
        }
    }
  },
}
