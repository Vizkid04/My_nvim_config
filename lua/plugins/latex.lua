return {
    {
        "lervag/vimtex",
        config = function()
            vim.cmd([[let g:vimtex_view_general_viewer = 'okular']])
            vim.cmd([[let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex']])
            vim.cmd([[let g:vimtex_compiler_method = 'latexmk']])
            vim.cmd([[map <C-l> \ll<CR> ]])
            vim.cmd([[let g:vimtex_quickfix_open_on_warning = 0]])
        end,
    },
}
