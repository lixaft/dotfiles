-- Implementation of gx without the need of netrw.
--
-- https://github.com/chrishrb/gx.nvim

return {
  "chrishrb/gx.nvim",
  lazy = true,
  event = { "BufEnter" },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = true,
}
