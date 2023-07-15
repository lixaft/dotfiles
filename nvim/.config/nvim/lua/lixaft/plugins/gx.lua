-- Implementation of gx without the need of netrw.

-- TODO: Find the command to use for the mapping.
return {
  "chrishrb/gx.nvim",
  event = { "BufEnter" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = true,
}
