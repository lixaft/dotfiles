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
    <a href="#tool">tool</a>
    ·
    <a href="#theme">theme</a>
    ·
    <a href="#installation">installation</a>
</div>

</br>


![preview](https://user-images.githubusercontent.com/61330762/209485333-1860e82d-f8f3-43e9-854b-353d7603005d.png)

## <samp><b>tool</b></samp>

- Editor - [neovim](https://github.com/neovim/neovim)
- Prompt - [starship](https://github.com/starship/starship)
- Shell - [fish](https://github.com/fish-shell/fish-shell)
- Terminal - [iterm2](https://iterm2.com/index.html)
- Terminal Multiplexer - [tmux](https://github.com/tmux/tmux)

</br>

## <samp><b>theme</b></samp>

- Colors - [tokyonight (night)](https://github.com/folke/tokyonight.nvim)
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

4. Initialize tools:
    * [tmux](https://github.com/tmux/tmux) - initialize [tpm](https://github.com/tmux-plugins/tpm) by using `<prefix>I` hotkey
    * [fish](https://github.com/fish-shell/fish-shell) - initialize [fisher](https://github.com/jorgebucaran/fisher) by running `fisher_update` (see [config.fish](https://github.com/lixaft/dotfiles/blob/main/src/.config/fish/config.fish) for details)
    * [neovim](https://github.com/neovim/neovim) - initialize [packer](https://github.com/wbthomason/packer.nvim) using `:PackerSync` command
