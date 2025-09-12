return {
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true,
        opts = {
            disable_filetype = { "tex" }, -- disable in TeX buffers
        }
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    }
}
