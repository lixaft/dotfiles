-- Show code context.
local partial = require("lixaft.core.utils").partial

return {
  "nvim-treesitter/nvim-treesitter-context",
  event = { "BufNewFile", "BufReadPost" },
  keys = {
    { "[c", partial("treesitter-context", "go_to_context") },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },

  config = true,
}
