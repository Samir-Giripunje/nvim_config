return{
    "HiPhish/rainbow-delimiters.nvim",
     config=function ()
      local colors = {
        "#ff0000",
        "#ffa500",
        "#ffff00",
        "#008000",
        "#0000ff",
        "#4b0082",
        "#9400d3",
    }

    -- Get the current buffer number
    local bufnr = vim.api.nvim_get_current_buf()

    -- Define a variable to keep track of the current depth of nesting
    local depth = 0

    -- Set up an autocommand to highlight nested delimiters
    vim.api.nvim_exec([[
        augroup RainbowDelimiters
            autocmd!
            autocmd BufEnter <buffer> let w:rainbow_depth = 0
            autocmd CursorMoved,CursorMovedI <buffer> call v:lua.highlight_delimiters()
        augroup END
    ]], false)

    -- Define a function to highlight delimiters
    _G.highlight_delimiters = function()
        -- Get the current line number and line content
        local linenr = vim.api.nvim_win_get_cursor(0)[1]
        local line = vim.api.nvim_buf_get_lines(bufnr, linenr - 1, linenr, false)[1]

        -- Iterate over each character in the line
        for i = 1, #line do
            local char = line:sub(i, i)
            -- If the character is an opening delimiter, increase the depth
            if char:match("[%(%[{]") then
                depth = depth + 1
            -- If the character is a closing delimiter, decrease the depth
            elseif char:match("[%)%]}]") then
                depth = math.max(depth - 1, 0)
            end

            -- Highlight the character with a color corresponding to the current depth
            if char:match("[%(%[{]") or char:match("[%)]}%]") then
                vim.api.nvim_buf_add_highlight(bufnr, -1, "RainbowDelimiter" .. depth, linenr - 1, i - 1, i)
            end
        end
    end

    -- Define highlight groups for each depth level
    for i, color in ipairs(colors) do
        local highlight_group = "RainbowDelimiter" .. i
        vim.api.nvim_command("highlight " .. highlight_group .. " guifg=" .. color)
    end
end
}
