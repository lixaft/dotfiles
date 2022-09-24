return require("packer").startup(function()
    use {"wbthomason/packer.nvim"}

    -- Color scheme.
    use {"drewtempelmeyer/palenight.vim"}

    -- Filetype support.
    use {"dag/vim-fish"}

    -- Vim Better Whitespace: Highlight trailing whiltespaces.
    use {"ntpeters/vim-better-whitespace"}

    -- Telescope: highly extendable fuzzy finder over lists.
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"},
        },
    }

    -- Lualine: A blazing fast and easy to configure statusline.
    use {
        "nvim-lualine/lualine.nvim",
        requires = {
            {"kyazdani42/nvim-web-devicons", opt = true}
        }
    }

end)
