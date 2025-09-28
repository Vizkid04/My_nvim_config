# My_nvim_config
<br><br>
<h1>My neovim configuration.</h1>
<br><br>
<h2>Requirements for full functionality</h2>
<br><br>
<p>
1.Neovim 0.9 or above<br>
2.Lazy plugin management<br>
3.texlive full suite<br>
4.Rust standard libraries (optional: Not needed if you do not want rust autosuggestions for completion)<br>
5.basedpyright (optional: Not needed if you do not want language support (autosuggestions for completion) for python)<br>
6.texlab (optional: Not needed if you do not want language support (autosuggestions for completion) for latex)<br>
7.clangd (optional: Not needed if you do not want language support (autosuggestions for completion) for c/cpp)<br>
8.rust-analyzer (optional: Not needed if you do not want language support (autosuggestions for completion) for rust)<br>
9. fortls (optional: Not needed if you do not want language support (autosuggestions for completion) for Fortran)<br>
10. julials (optional: Not needed if you do not want language support (autosuggestions for completion) for julia)<br>
11. tinymist (optional: Not needed if you do not want language support (autosuggestions for completion) for typst)<br>
12.okular pdf viewer (optional: you can modify the config file easily to accomodate for other pdf viewers for writing latex)
</p>
<br><br>
<h2>Usage</h2>
<br><br>
<p>
1.Clone the repository into ~/.config and rename the newly created directory to "nvim"<br>
2. Create your equivalent preamble files corresponding to paths referenced in after/ftplugin/c.vim and after/ftplugin/tex.vim and change the existing paths to match the paths of your newly created preamble files accordingly.
3.Open init.vim using nvim<br>
4.Run :Lazy and (I)nstall all plugins.
</p>
<br><br>
<h2>Credits</h2>
<br><br>
<p>
I am using luasnip for my snippets.<br>
I have modified Gilles Castel's ultisnip syntaxed snippet file to a luasnip syntaxed snippet file in order to implement it in my setup.
</p>
<br><br>
<h2>To Do List</h2>
<br><br>
<p>
1.Adding latex inkscape support.<br>
2.Making pgfplots and tikz libraries' latex workflow incredibly fast.
3. Improving the typst setup to make workflow robust, efficient and easy.
</p>
