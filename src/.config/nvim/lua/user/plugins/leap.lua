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
      "<c-l>",
      function()
        require("leap").leap({})
      end,
      desc = "Leap forward",
    },
    {
      "<c-h>",
      function()
        require("leap").leap({ backward = true })
      end,
      desc = "Leap forward",
    },
    -- { "<c-h>", "<Plug>(leap-backward-till)", desc = "Leap backward" },
  },
  dependencies = {
    "tpope/vim-repeat",
  },
}
