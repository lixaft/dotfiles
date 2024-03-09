-- Treesitter playground integrated into Neovim.

return {
    "nvim-treesitter/playground",
    cmd = {
        "TSHighlightCapturesUnderCursor",
        "TSNodeUnderCursor",
        "TSPlaygroundToggle",
    },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
}
