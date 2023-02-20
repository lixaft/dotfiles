-- Leap is a general-purpose motion plugin for Neovim, with the ultimate goal
-- of establishing a new standard interface for moving around in the visible
-- area in Vim-like modal editors.
--
-- https://github.com/ggandor/leap.nvim

return {
  "ggandor/leap.nvim",
  lazy = true,
  keys = {
    { "<c-l>", "<Plug>(leap-forward-till)", desc = "Leap forward" },
    { "<c-h>", "<Plug>(leap-backward-till)", desc = "Leap backward" },
  },
  dependencies = {
    "ggandor/flit.nvim",
    "tpope/vim-repeat",
  },
}
