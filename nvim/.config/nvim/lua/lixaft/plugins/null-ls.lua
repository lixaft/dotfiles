-- Use Neovim as a language server to inject LSP diagnostics, code actions,
-- and more via Lua.
--
-- https://github.com/jose-elias-alvarez/null-ls.nvim

return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function()
    local null_ls = require("null-ls")
    return {
      sources = {
        -- Shell.
        null_ls.builtins.formatting.shfmt,

        -- Lua.
        null_ls.builtins.diagnostics.luacheck,
        null_ls.builtins.formatting.stylua.with({
          extra_args = {
            "--call-parentheses=Always",
            "--collapse-simple-statement=Never",
            "--column-width=79",
            "--indent-type=Spaces",
            "--indent-width=2",
            "--line-endings=Unix",
            "--quote-style=AutoPreferDouble",
          },
        }),

        -- Python.
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.formatting.ruff,

        -- Cmake.
        null_ls.builtins.formatting.gersemi,

        -- C/C++.
        null_ls.builtins.diagnostics.cpplint,
        null_ls.builtins.formatting.clang_format,

        -- Well, let's say a lot.
        null_ls.builtins.formatting.prettier,
      },
    }
  end,
}
