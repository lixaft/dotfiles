return require("packer").startup(function()
    use {"wbthomason/packer.nvim"}

    -- Neovim lua utilities.
    use {"nvim-lua/plenary.nvim"}

    -- Palenight color scheme.
    use {"drewtempelmeyer/palenight.vim"}

    -- Support for editing fish scripts.
    use {"dag/vim-fish"}

    -- Trailing whitespace highlight.
    use {"ntpeters/vim-better-whitespace"}

    -- File explorer.
    use {"nvim-telescope/telescope.nvim"}


    use {"nvim-treesitter/nvim-treesitter"}

    -- Lualine: A blazing fast and easy to configure statusline.
    use {"nvim-lualine/lualine.nvim"}
    use {"kyazdani42/nvim-web-devicons"}


    use {"hrsh7th/nvim-cmp"}

    -- lspkind: vscode-like pictograms for neovim lsp completion items.
    use {"onsails/lspkind.nvim"}

    -- lspsaga: neovim lsp plugin.
    use {"glepnir/lspsaga.nvim"}

    use {"neovim/nvim-lspconfig"}
    use {"hrsh7th/cmp-nvim-lsp"}

    -- null-ls: Use Neovim as a language server to inject LSP diagnostics,
    -- code actions, and more via Lua.
    use {"jose-elias-alvarez/null-ls.nvim"}
    use {"folke/trouble.nvim"}

    -- Missing LSP diagnostics highlight groups.
    use {"folke/lsp-colors.nvim"}

end)
