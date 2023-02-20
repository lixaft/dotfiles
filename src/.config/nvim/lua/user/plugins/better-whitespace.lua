-- Better whitespace highlighting for Vim
--
-- https://github.com/ntpeters/vim-better-whitespace

return {
  "ntpeters/vim-better-whitespace",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
}
