-- Delete/change/add parentheses/quotes/XML-tags/much more with ease.

return {
  "tpope/vim-surround",
  event = { "BufNewFile", "BufReadPost" },
  dependencies = { "tpope/vim-repeat" },
}
