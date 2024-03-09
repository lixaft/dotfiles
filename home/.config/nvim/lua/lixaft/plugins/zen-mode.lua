-- Distraction-free coding for Neovim.

return {
    "folke/zen-mode.nvim",
    cmd = { "ZenMode" },
    keys = {
        { "<c-w>z", "<cmd>ZenMode<cr>" },
    },

    opts = {
        window = {
            backdrop = 1,
            width = 1,
        },
    },
}
