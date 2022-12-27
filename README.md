<h1 align="center">
    <div align="center">
        <samp><b>dotfiles</b></samp>
    </div>
</h1>

<div align="center">
    <a href="#setup">setup</a>
    ·
    <a href="#theme">theme</a>
    ·
    <a href="#installation">installation</a>
</div>

</br>

![preview](https://user-images.githubusercontent.com/61330762/209485333-1860e82d-f8f3-43e9-854b-353d7603005d.png)

</br>

> “Look again at that dot. That's here. That's home. That's us.“ [^1]

</br>

This repository contains my personal configuration files (also known as [dotfiles](https://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory#Unix_and_Unix-like_environments)) for most of the programs I use on a daily basis. I mainly use macOS, but they should work on any other Unix-like operating system.

Feel free to try them or get inspired, but be aware that if you decide to install and use them, it will be at your own risk!

If you have any suggestion, improvement or question, do not hesitate to open an issue or PR :)

</br>

## <samp><b>setup</b></samp>

- Editor - [neovim](https://github.com/neovim/neovim)
- Multiplexer - [tmux](https://github.com/tmux/tmux)
- Prompt - [starship](https://github.com/starship/starship)
- Shell - [fish](https://github.com/fish-shell/fish-shell)
- Terminal - [iterm2](https://iterm2.com/index.html)

</br>

## <samp><b>theme</b></samp>

- Colors - [tokyonight (night)](https://github.com/folke/tokyonight.nvim)
- Font - [fira code](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
- Wallpaper[^2] - [wallpaperflare](https://www.wallpaperflare.com/astronaut-space-black-background-artwork-wallpaper-gjfku)

</br>

## <samp><b>installation</b></samp>

1. Clone this repository
   ```shell
   git clone https://github.com/lixaft/dotfiles
   ```

2. `cd` inside the clonned directory
   ```shell
   cd dotfiles
   ```

3. Run the [install](https://github.com/lixaft/dotfiles/blob/main/install) script
   ```shell
   ./install
   ```

   You will probably get errors the first time you run the script. This is because it will not delete or overwrite any existing files by default. To change this behavior, use the `--force` option (⚠ the original files will be permanently lost)

4. Initialize tools
    * [tmux](https://github.com/tmux/tmux) - initialize [tpm](https://github.com/tmux-plugins/tpm) by using `<prefix>I` hotkey
    * [fish](https://github.com/fish-shell/fish-shell) - initialize [fisher](https://github.com/jorgebucaran/fisher) by running `fisher_update` (see [config.fish](https://github.com/lixaft/dotfiles/blob/main/src/.config/fish/config.fish) for details)
    * [neovim](https://github.com/neovim/neovim) - initialize [packer](https://github.com/wbthomason/packer.nvim) using `:PackerSync` command

</br>

[^1]: From "Pale Blue Dot: A Vision of the Human Future in Space" by Carl Sagan
[^2]: If you know the name of the artist who painted this image, please let me know and I'll update the link!
