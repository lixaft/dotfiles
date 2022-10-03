require("cmp").setup(
    {
        sources = {
            {name = "cmp_tabnine"},
            {name = "nvim_lsp"},
        },
        formatting = {
            format = require("lspkind").cmp_format(
                {
                    mode = "symbol",
                    maxwith = 50,
                    ellipsis_char = "...",
                }
            )
        },
    }
)
