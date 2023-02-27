-- Enhanced f/t motions for Leap.
--
-- https://github.com/ggandor/flit.nvim

local function flit(opts)
  return function()
    require("flit").flit(opts or {})
  end
end

return {
  "ggandor/flit.nvim",
  lazy = true,
  keys = {
    { "f", flit({ offset = 0, backward = false }), desc = "Find forward" },
    { "F", flit({ offset = 0, backward = true }), desc = "Find backward" },
    { "t", flit({ offset = -1, backward = false }), desc = "Target forward" },
    { "T", flit({ offset = -1, backward = true }), desc = "Target backward" },
  },
  dependencies = {
    "ggandor/leap.nvim",
  },
  opts = {
    labeled_modes = "nv",
  },
}
