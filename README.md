<h1 align="center">
    <div align="center">
        <samp><b>dotfiles</b></samp>
    </div>
</h1>

<div align="center">
    My personal set of configuration files!
</div>

</br>

<div align="center">
    <a href="#setup">setup</a>
    ·
    <a href="#theme">theme</a>
    ·
    <a href="#installation">installation</a>
</div>

</br>


![preview](https://user-images.githubusercontent.com/61330762/209485333-1860e82d-f8f3-43e9-854b-353d7603005d.png)

## <samp><b>setup</b></samp>

- Terminal - [iterm2](https://iterm2.com/index.html)
- Terminal Multiplexer - [tmux](https://github.com/tmux/tmux)
- Shell - [fish](https://github.com/fish-shell/fish-shell)
- Prompt - [starship](https://github.com/starship/starship)
- Editor - [neovim](https://github.com/neovim/neovim)

</br>

## <samp><b>theme</b></samp>

- Coors - [tokyonight (night)](https://github.com/folke/tokyonight.nvim)
- Font - [fira code](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
- Wallpaper - [wallpaperflare](https://www.wallpaperflare.com/astronaut-space-black-background-artwork-wallpaper-gjfku)


</br>

## <samp><b>installation</b></samp>

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
4. tmux is setup using [`tpm`](https://github.com/tmux-plugins/tpm). To initialize it, press `<prefix>I` (by defaults)
5. In the same way, [neovim](https://github.com/neovim/neovim) is setup using [packer](). Run the command `PackerSync` to fetch all the plugins
6. finally, initialize fish by typing `fisher_update`


