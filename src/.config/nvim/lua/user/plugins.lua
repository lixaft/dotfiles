return require("packer").startup(function(use)
    use {"wbthomason/packer.nvim"}

    -- Vim support for editing fish scripts.
    use {"dag/vim-fish"}

    -- Soothing color scheme for your favorite [best] text editor.
    use {"drewtempelmeyer/palenight.vim"}

    -- Plugin that creates missing LSP diagnostics highlight groups for color
    -- schemes that don't yet support the Neovim 0.5 builtin LSP client.
    use {"folke/lsp-colors.nvim"}

    -- A pretty diagnostics, references, telescope results, quickfix and
    -- location list to help you solve all the trouble your code is causing.
    use {"folke/trouble.nvim"}

    -- Neovim lsp plugin.
    use {"glepnir/lspsaga.nvim"}

    -- nvim-cmp source for neovim builtin LSP client.
    use {"hrsh7th/cmp-nvim-lsp"}

    -- A completion plugin for neovim coded in Lua.
    use {"hrsh7th/nvim-cmp"}

    -- Use Neovim as a language server to inject LSP diagnostics, code actions,
    -- and more via Lua.
    use {"jose-elias-alvarez/null-ls.nvim"}

    -- Quickstart configs for Nvim LSP.
    use {"neovim/nvim-lspconfig"}

    -- Better whitespace highlighting for Vim.
    use {"ntpeters/vim-better-whitespace"}

    -- Smart and powerful comment plugin for neovim. Supports treesitter, dot
    -- repeat, left-right/up-down motions, hooks, and more.
    use {"numToStr/Comment.nvim"}

    -- Plenary: full; complete; entire; absolute; unqualified.
    -- All the lua functions I don't want to write twice.
    use {"nvim-lua/plenary.nvim"}

    -- A blazing fast and easy to configure neovim statusline plugin written in
    -- pure lua.
    use {"nvim-lualine/lualine.nvim"}
    --
    -- Find, Filter, Preview, Pick. All lua, all the time.
    use {"nvim-telescope/telescope.nvim"}

    -- Lua `fork` of vim-web-devicons for neovim.
    use {"nvim-tree/nvim-web-devicons"}

    -- Nvim Treesitter configurations and abstraction layer.
    use {"nvim-treesitter/nvim-treesitter"}

    -- Vscode-like pictograms for neovim lsp completion items.
    use {"onsails/lspkind.nvim"}
end)
