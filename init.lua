require("config.lazy")
require("config.basic")
-- LSP SETUP
vim.lsp.enable({
    'luals',
    'clangd',
    'texlab',
    'tinymist',
    'basedpyright',
    'rust_analyzer',
    'fortls'
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "julia",
  callback = function(args)
    local bufnr = args.buf
    local fname = vim.api.nvim_buf_get_name(bufnr)
    local root = vim.fn.fnamemodify(fname, ":p:h")

    print("FileType detected: Julia")
    print("Starting Julia LSP in dir: " .. root)

    local success = vim.lsp.start({
      name = "juls",
      cmd = {"/home/vizkid/Documents/Rust/juls/target/debug/juls"},
      root_dir = root,
      filetypes = {"julia"},
      on_attach = function(client, bufnr)
        print("Julia LSP attached!")
      end,
    })

    if not success then
      print("Failed to start Julia LSP.")
    end
  end,
})


-- LSP Diagnostics Options Setup
vim.diagnostic.config({
    virtual_text = false,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "❤",
            [vim.diagnostic.severity.WARN]  = "",
            [vim.diagnostic.severity.INFO]  = "",
            [vim.diagnostic.severity.HINT]  = "",
        },
    },
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

--Toggle Diagnostic window
vim.keymap.set({'n', 'v', 'i'}, '<c-d>', function()
-- If we find a floating window, close it.
    local found_float = false
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_win_get_config(win).relative ~= '' then
            vim.api.nvim_win_close(win, true)
            found_float = true
        end
    end

    if found_float then
        return
    end

    vim.diagnostic.open_float(nil, { focusable = false })
    end, { desc = 'Toggle Diagnostics' }
)
