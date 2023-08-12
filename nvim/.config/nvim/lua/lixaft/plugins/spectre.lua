-- Find the enemy and replace them with dark power.
local partial = require("lixaft.core.utils").partial

return {
  "nvim-pack/nvim-spectre",
  keys = {
    { "<leader>S", partial("spectre", "toggle") },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  opts = {},
}
