return {
  cmd = { 'texlab' },
  filetypes = { 'tex', 'bib' },
  root_dir = function(fname)
    local path = (type(fname) == 'string' and fname ~= "") and fname or vim.api.nvim_buf_get_name(0)
    if path == "" then return vim.fn.getcwd() end
    local root_files = { '.git', 'latexmkrc', '.latexmkrc', 'main.tex', 'index.tex' }
    local search = vim.fs.find(root_files, { upward = true, path = path })
    if #search > 0 then
      return vim.fs.dirname(search[1])
    end
    return vim.fs.dirname(path)
  end,
  settings = {
    texlab = {
      build = { onSave = true },
      auxDirectory = ".",
      bibDirectory = ".",
      chktex = {
        onOpenAndSave = true,
        onEdit = false
      },
    },
  },
}
