-- A high-performance color highlighter for Neovim which has no external
-- dependencies! Written in performant Luajit.
--
-- https://github.com/norcalli/nvim-colorizer.lua

return {
  "norcalli/nvim-colorizer.lua",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    -- Highlight all files, but customize some others.
    "*",

    -- Enable parsing rgb(...) functions in css.
    css = { rgb_fn = true },
  },
}
