-- Leap is a general-purpose motion plugin for Neovim, with the ultimate goal
-- of establishing a new standard interface for moving around in the visible
-- area in Vim-like modal editors.
--
-- https://github.com/ggandor/leap.nvim

return {
  "ggandor/leap.nvim",
  lazy = true,
  keys = {
    {
      "<c-f>",
      function()
        require("leap").leap({})
      end,
      desc = "Leap forward",
    },
    {
      "<c-b>",
      function()
        require("leap").leap({ backward = true })
      end,
      desc = "Leap backward",
    },
  },
  dependencies = {
    "tpope/vim-repeat",
  },
}
