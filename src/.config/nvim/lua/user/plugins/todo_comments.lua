-- Highlight, list and search todo comments in your projects.
--
-- https://github.com/folke/todo-comments.nvim

return {
  "folke/todo-comments.nvim",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
  config = true,
}
