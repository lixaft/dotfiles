-- Neovim plugin for splitting/joining blocks of code.

return {
    "Wansmer/treesj",
    keys = {
        { "gj", "<cmd>TSJToggle<cr>" },
    },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },

    opts = {
        use_default_keymaps = false,
    },
}
