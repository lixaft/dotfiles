local use = require("packer").use

return require("packer").startup(function()
    use {"wbthomason/packer.nvim"}

    -- Color scheme.
    use {"drewtempelmeyer/palenight.vim"}
    use {"folke/lsp-colors.nvim"}

    -- Filetype support.
    use {"dag/vim-fish"}

    -- Vim Better Whitespace: Highlight trailing whiltespaces.
    use {"ntpeters/vim-better-whitespace"}

    -- Telescope: highly extendable fuzzy finder over lists.
    use {"nvim-telescope/telescope.nvim"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-treesitter/nvim-treesitter"}

    -- Lualine: A blazing fast and easy to configure statusline.
    use {"nvim-lualine/lualine.nvim"}
    use {"kyazdani42/nvim-web-devicons"}


    -- Tabnine: AI assistant for software developers.
    use {"tzachar/cmp-tabnine", run = "./install.sh"}
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

end)
