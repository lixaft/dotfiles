return require("packer").startup(function(use)
    use({ "wbthomason/packer.nvim" })

    -- Vim support for editing fish scripts.
    use({ "dag/vim-fish" })

    -- Plugin that creates missing LSP diagnostics highlight groups for color
    -- schemes that don't yet support the Neovim 0.5 builtin LSP client.
    use({ "folke/lsp-colors.nvim" })

    -- A clean, dark Neovim theme written in Lua, with support for lsp,
    -- treesitter and lots of plugins.
    use({ "folke/tokyonight.nvim" })

    -- A pretty diagnostics, references, telescope results, quickfix and
    -- location list to help you solve all the trouble your code is causing.
    use({ "folke/trouble.nvim" })

    -- Create key bindings that stick. WhichKey is a lua plugin for Neovim 0.5
    -- that displays a popup with possible keybindings of the command you
    -- started typing.
    use({ "folke/which-key.nvim" })

    -- nvim-cmp source for buffer words.
    use({ "hrsh7th/cmp-buffer" })

    -- nvim-cmp source for neovim builtin LSP client.
    use({ "hrsh7th/cmp-nvim-lsp" })

    -- nvim-cmp source for nvim lua.
    use({ "hrsh7th/cmp-nvim-lua" })

    -- nvim-cmp source for path.
    use({ "hrsh7th/cmp-path" })

    -- A completion plugin for neovim coded in Lua.
    use({ "hrsh7th/nvim-cmp" })

    -- Use Neovim as a language server to inject LSP diagnostics, code actions,
    -- and more via Lua.
    use({ "jose-elias-alvarez/null-ls.nvim" })

    -- A Vim alignment plugin.
    use({ "junegunn/vim-easy-align" })

    -- Display a character as the colorcolumn.
    use({ "lukas-reineke/virt-column.nvim" })

    -- The undo history visualizer for VIM.
    use({ "mbbill/undotree" })

    -- Quickstart configs for Nvim LSP.
    use({ "neovim/nvim-lspconfig" })

    -- The fastest Neovim colorizer.
    use({ "norcalli/nvim-colorizer.lua" })

    -- Better whitespace highlighting for Vim.
    use({ "ntpeters/vim-better-whitespace" })

    -- Smart and powerful comment plugin for neovim. Supports treesitter, dot
    -- repeat, left-right/up-down motions, hooks, and more.
    use({ "numToStr/Comment.nvim" })

    -- Plenary: full; complete; entire; absolute; unqualified.
    -- All the lua functions I don't want to write twice.
    use({ "nvim-lua/plenary.nvim" })

    -- A blazing fast and easy to configure neovim statusline plugin written in
    -- pure lua.
    use({ "nvim-lualine/lualine.nvim" })

    -- Find, Filter, Preview, Pick. All lua, all the time.
    use({ "nvim-telescope/telescope.nvim" })

    -- A file explorer tree for neovim written in lua.
    use({ "nvim-tree/nvim-tree.lua" })

    -- Lua `fork` of vim-web-devicons for neovim.
    use({ "nvim-tree/nvim-web-devicons" })

    -- Treesitter playground integrated into Neovim.
    use({ "nvim-treesitter/playground" })

    -- Nvim Treesitter configurations and abstraction layer.
    use({ "nvim-treesitter/nvim-treesitter" })

    -- Show code context.
    use({ "nvim-treesitter/nvim-treesitter-context" })

    -- Set of preconfigured snippets for different languages.
    use({ "rafamadriz/friendly-snippets" })

    -- luasnip completion source for nvim-cmp.
    use({ "saadparwaiz1/cmp_luasnip" })

    -- Getting you where you want with the fewest keystrokes.
    use({ "theprimeagen/harpoon" })

    -- Portable package manager for Neovim that runs everywhere Neovim runs.
    -- Easily install and manage LSP servers, DAP servers, linters,
    -- and formatters.
    use({ "williamboman/mason.nvim" })

    -- Extension to mason.nvim that makes it easier to use lspconfig with
    -- mason.nvim. Strongly recommended for Windows users.
    use({ "williamboman/mason-lspconfig.nvim" })
end)
