-- Better whitespace highlighting for Vim.

return {
    "ntpeters/vim-better-whitespace",
    event = { "BufNewFile", "BufReadPost" },
    cmd = {
        "EnableWhitespace",
        "DisableWhitespace",
        "ToggleWhitespace",
    },
}
