require("null-ls").setup(
    {
        sources = {
            require("null-ls").builtins.diagnostics.mypy,
            -- require("null-ls").builtins.diagnostics.pylint,
            require("null-ls").builtins.formatting.black,
            require("null-ls").builtins.formatting.isort,
        }
    }
)
