local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        -- Lua.
        null_ls.builtins.diagnostics.luacheck,
        null_ls.builtins.formatting.stylua.with({
            extra_args = {
                "--call-parentheses=Always",
                "--collapse-simple-statement=Always",
                "--column-width=79",
                "--indent-type=Spaces",
                "--indent-width=4",
                "--line-endings=Unix",
                "--quote-style=AutoPreferDouble",
            },
        }),

        -- Python.
        null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.formatting.black.with({
            extra_args = {
                "--line-length=79",
            },
        }),
        null_ls.builtins.formatting.isort.with({
            extra_args = {
                "--force-single-line-imports",
                "--profile=black",
            },
        }),
    },
})
