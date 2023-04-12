-- Extension to mason.nvim that makes it easier to use lspconfig with
-- mason.nvim. Strongly recommended for Windows users.
--
-- https://github.com/search?q=mason-lspconfig

return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      "bashls",
      "clangd",
      "cmake",
      "cssls",
      "dockerls",
      "html",
      "lua_ls",
      "pyright",
      "rust_analyzer",
    },
  },
}
