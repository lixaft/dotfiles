-- Super fast git decorations implemented purely in lua/teal.
local partial = require("lixaft.utils.func").partial

return {
  "lewis6991/gitsigns.nvim",
  event = { "BufNewFile", "BufReadPre" },
  cmd = { "Gitsigns" },
  keys = {
    {
      "<leader>b",
      partial("gitsigns", "blame_line", { ignore_whitespace = true }),
    },
  },

  opts = {
    signs = {
      add = { text = "▎" },
      change = { text = "▎" },
      changedelete = { text = "契" },
      delete = { text = "契" },
      topdelete = { text = "契" },
      untracked = { text = "▎" },
    },

    preview_config = {
      border = "rounded",
    },
  },
}
