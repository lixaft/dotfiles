-- Extension to mason.nvim that makes it easier to use lspconfig with
-- mason.nvim. Strongly recommended for Windows users.
--
-- https://github.com/search?q=mason-lspconfig

return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "ansiblels",
      "clangd",
      "jedi_language_server",
      "lua_ls",
      "rust_analyzer",
    },
  },
}
