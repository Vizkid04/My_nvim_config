return {
    {
        'kaarmu/typst.vim',
        config = function()
            vim.cmd([[let g:typst_pdf_viewer = 'okular']])
            vim.cmd([[let g:typst_auto_open_quickfix = '0']])
        end,
    }
}
