-- Show code context.
local partial = require("lixaft.core.utils").partial

return {
  "nvim-treesitter/nvim-treesitter-context",
  event = { "BufNewFile", "BufReadPost" },
  keys = {
    { "gC", partial("treesitter-context", "go_to_context") },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },

  opts = {
    separator = "-",
  },

  config = true,
}
