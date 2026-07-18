return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main", -- Pull the rewritten branch required for Neovim 0.12+
        lazy = false,    -- The main branch no longer supports lazy-loading
        build = ":TSUpdate",
        dependencies = {
            { "nvim-treesitter/nvim-treesitter-textobjects", branch = "main" },
        },
        config = function()
            local ts = require("nvim-treesitter")
            ts.setup()

            -- 1. Imperative installation instead of declarative table options
            -- Added "python" here since your workflow relies on it
            local ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "python" }
            local installed = require("nvim-treesitter.config").get_installed()
            local to_install = vim.tbl_filter(function(p)
                return not vim.tbl_contains(installed, p)
            end, ensure_installed)

            if #to_install > 0 then
                ts.install(to_install)
            end

            -- 2. Enable native Treesitter highlighting with your LaTeX exclusion rules
            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    local buf = args.buf
                    local ft = vim.bo[buf].filetype
                    local lang = vim.treesitter.language.get_lang(ft) or ft

                    if lang == "latex" then
                        return
                    end

                    pcall(vim.treesitter.start, buf)
                end,
            })

            -- 3. Decoupled configuration for Textobjects 
            local ok, textobjects = pcall(require, "nvim-treesitter-textobjects")
            if ok then
                textobjects.setup({
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["aa"] = "@parameter.outer",
                            ["ia"] = "@parameter.inner",
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                            ["ai"] = "@conditional.outer",
                            ["ii"] = "@conditional.inner",
                            ["al"] = "@loop.outer",
                            ["il"] = "@loop.inner",
                            ["ak"] = "@block.outer",
                            ["ik"] = "@block.inner",
                            ["is"] = "@statement.inner",
                            ["as"] = "@statement.outer",
                            ["ad"] = "@comment.outer",
                            ["am"] = "@call.outer",
                            ["im"] = "@call.inner",
                        },
                        include_surrounding_whitespace = true,
                    },
                })
            end
        end,
    },
}
