return {
    {
        "L3MON4D3/LuaSnip",
        version = 'v2.*',
        config = function()
            require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/LuaSnip/" })

            require("luasnip").config.set_config({ -- Setting LuaSnip config

                -- Enable autotriggered snippets
                enable_autosnippets = true,

                -- Use Tab (or some other key if you prefer) to trigger visual selection
                store_selection_keys = "<Tab>",
                update_events = 'TextChanged,TextChangedI',
            })
        end
    },
    {
        'saghen/blink.cmp',
        dependencies = { "L3MON4D3/LuaSnip", version = 'v2.*' },
        version = '1.*',
        opts = {
            keymap = { preset = 'default' },
            completion = { documentation = { auto_show = true, window = {border="rounded"} }, list = {max_items = 200, selection = {preselect = false, auto_insert = true}}, menu = {border = "rounded", draw = {columns = {{"kind_icon", gap = 1, "kind"}, {"label", gap = 1, "label_description"}}}}},
            fuzzy = { implementation = "rust" },
            signature = { enabled = true },
            snippets = { preset = 'luasnip' },
            sources = {
                default = { 'lsp', 'snippets', 'path', 'buffer' },
            },
        },
        opts_extend = { "sources.default" },
    }
}
