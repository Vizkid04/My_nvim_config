return {
    {
        "Yggdroot/indentLine",
        config = function()
            vim.cmd([[let g:indentLine_setColors = 0]])
            vim.cmd([[let g:indentLine_char = '|']])
        end,
    },
}
