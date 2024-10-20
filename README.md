# My_nvim_config
<br><br>
<h1>My neovim configuration.</h1>
<br><br>
<h2>Requirements for full functionality</h2>
<br><br>
<p>
1.Neovim 0.9 or above<br>
2.vim-plug<br>
3.texlive full suite<br>
4.Rust standard libraries (optional: Not needed if you do not want rust tabcomplete)<br>
5.pyright (optional: Not needed if you do not want language support (tab-complete) for python)<br>
6.texlab (optional: Not needed if you do not want language support (tab-complete) for latex)<br>
7.clangd (optional: Not needed if you do not want language support (tab-complete) for c/cpp)<br>
8.rust-analyzer (optional: Not needed if you do not want language support (tab-complete) for rust)<br>
6.okular pdf viewer (optional: you can modify the config file easily to accomodate for other pdf viewers for writing latex)
</p>
<br><br>
<h2>Usage</h2>
<br><br>
<p>
1.Clone the repository into ~/.config and rename the newly created directory to "nvim"<br>
2.Open init.vim using nvim<br>
3.Run :PlugInstall (Note: you might have to save close and reopen init.vim for :PlugInstall to actually download the necessary plugins (Pay attention to the output of :PlugInstall to confirm successful installation of necessary plugins))
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
</p>
