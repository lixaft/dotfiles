-- Implementation of gx without the need of netrw.

return {
  "chrishrb/gx.nvim",
  event = { "BufEnter" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = true,
}
