-- Snippet Engine for Neovim written in Lua.

return {
  "L3MON4D3/LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
  },
  lazy = true,

  build = "make install_jsregexp",

  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
