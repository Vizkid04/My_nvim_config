return {
  cmd = { 'texlab' },
  filetypes = { 'tex', 'bib' },
  root_markers = { 'main.tex', '.git', 'latexmkrc', '.latexmkrc', 'index.tex' },
  settings = {
    texlab = {
      build = { onSave = true },
      chktex = { onOpenAndSave = true },
    },
  },
}
