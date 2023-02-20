-- (Neo)Vim plugin for automatically highlighting other uses of the word under
-- the cursor using either LSP, Tree-sitter, or regex matching.
--
-- https://github.com/RRethy/vim-illuminate

return {
  "RRethy/vim-illuminate",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
  opts = { delay = 200 },
  config = function(_, opts)
    require("illuminate").configure(opts)
  end,
}
