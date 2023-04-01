-- Dumb automatic fast indentation detection for Neovim written in Lua.
--
-- https://github.com/Darazaki/indent-o-matic

return {
  "Darazaki/indent-o-matic",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
}
