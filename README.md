<h1 align="center">
    <div align="center">
        <samp><b>dotfiles</b></samp>
    </div>
</h1>

</br>


![t2](https://user-images.githubusercontent.com/61330762/209485333-1860e82d-f8f3-43e9-854b-353d7603005d.png)

## <samp><b>Setup</b></samp>

- Theme: [tokyonight (night)](https://github.com/folke/tokyonight.nvim)
- Font: [Fira Code](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
- Terminal: [iterm2](https://iterm2.com/index.html)
- Terminal Multiplexer: [tmux](https://github.com/tmux/tmux)
- Shell: [fish](https://github.com/fish-shell/fish-shell)
- Prompt: [starship](https://github.com/starship/starship)
- Editor: [neovim](https://github.com/neovim/neovim)


</br>

## <samp><b>Installation</b></samp>

1. Clone this repository
   ```shell
   git clone https://github.com/lixaft/dotfiles
   ```
2. `cd` into the clonned directories
   ```shell
   cd dotfiles
   ```
3. Run the `install` script. In case where a file already exists you can use the `--force` option to override it (⚠️ the original files will be lost forever)
   ```shell
   ./install
   ```

4. tmux: enter tmux and fetch the plugins using `prefix+I`

5. nvim: eneter nvim and execute the command: `PackerSync`
