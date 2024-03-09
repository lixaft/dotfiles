-- Dumb automatic fast indentation detection for Neovim written in Lua.

return {
  "Darazaki/indent-o-matic",
  event = { "BufNewFile", "BufReadPost" },
  cmd = { "IndentOMatic" },
}
