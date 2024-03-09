-- Super fast git decorations implemented purely in lua/teal.

return {
    "lewis6991/gitsigns.nvim",
    event = { "BufNewFile", "BufReadPre" },
    cmd = { "Gitsigns" },

    opts = {
        signs = {
            add = { text = "▎" },
            change = { text = "▎" },
            changedelete = { text = "契" },
            delete = { text = "契" },
            topdelete = { text = "契" },
            untracked = { text = "▎" },
        },

        preview_config = {
            border = "rounded",
        },
    },
}
