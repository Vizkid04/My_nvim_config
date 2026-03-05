return {
    {
        "lervag/vimtex",
        config = function()
            vim.g.vimtex_view_method = "general"
            vim.g.vimtex_view_general_viewer = "okular"
            vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"
            vim.g.vimtex_compiler_method = "latexmk"
            vim.g.vimtex_compiler_latexmk = {
                options = { "-pdf", "-synctex=1", "-interaction=nonstopmode", "-file-line-error" },
            }
            vim.g.vimtex_compiler_continuous = 1
            vim.g.vimtex_quickfix_open_on_warning = 0
            vim.opt.conceallevel = 0
            vim.opt.concealcursor = ""
            vim.g.vimtex_syntax_conceal_disable = 1
        end,
    },
}
