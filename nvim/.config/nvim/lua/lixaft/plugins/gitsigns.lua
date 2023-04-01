-- Super fast git decorations implemented purely in lua/teal.
--
-- https://github.com/lewis6991/gitsigns.nvim

return {
  "lewis6991/gitsigns.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    signs = {
      add = { text = "▎" },
      change = { text = "▎" },
      delete = { text = "契" },
      topdelete = { text = "契" },
      changedelete = { text = "▎" },
      untracked = { text = "▎" },
    },
  },
}
