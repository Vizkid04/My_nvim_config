return {
    {
        "lervag/vimtex",
        config = function()
            vim.cmd([[let g:vimtex_view_general_viewer = 'okular']])
            vim.cmd([[let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex']])
            vim.cmd([[let g:vimtex_compiler_method = 'latexmk']])
            vim.cmd([[map <C-l> \ll<CR> ]])
            vim.cmd([[let g:vimtex_quickfix_open_on_warning = 0]])
            vim.opt.conceallevel = 0
            vim.opt.concealcursor = ""
            vim.g.vimtex_syntax_conceal = {
                accents = 0,
                ligatures = 0,
                cites = 0,
                fancy = 0,
                spacing = 0,
                greek = 0,
                math_bounds = 0,
                math_delimiters = 0,
                math_fracs = 0,
                math_super_sub = 0,
                math_symbols = 0,
                sections = 0,
                styles = 0,
            }
        end,
    },
}
