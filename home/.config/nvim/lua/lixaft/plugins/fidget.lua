-- Standalone UI for nvim-lsp progress.

return {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",

    opts = {
        text = {
            spinner = "dots",
        },
        window = {
            blend = 0,
        },
    },
}
