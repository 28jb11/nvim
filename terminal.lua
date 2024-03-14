function ToggleTerminal()
    local term_buf = nil
    -- Try to find an open terminal buffer
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        local buftype = vim.api.nvim_buf_get_option(buf, 'buftype')
        if buftype == "terminal" then
            term_buf = buf
            break
        end
    end

    if term_buf then
        -- If a terminal buffer is found, check if it's visible
        local wins = vim.api.nvim_list_wins()
        local term_win = nil
        for _, win in ipairs(wins) do
            if vim.api.nvim_win_get_buf(win) == term_buf then
                term_win = win
                break
            end
        end
        if term_win then
            -- If the terminal is visible, close the window containing it
            vim.api.nvim_win_close(term_win, false)
        else
            -- If the terminal exists but is not visible, open it in a new split
            vim.cmd('botright split | buffer ' .. term_buf)
            vim.cmd('resize 10')
        end
    else
        -- If no terminal buffer is found, create a new one
        vim.cmd('botright split | terminal')
        vim.cmd('resize 10')
    end
end
