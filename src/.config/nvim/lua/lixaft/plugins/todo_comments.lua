-- Highlight, list and search todo comments in your projects.
--
-- https://github.com/folke/todo-comments.nvim

return {
  "folke/todo-comments.nvim",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    -- Highlighting of the line containing the todo comment.
    -- * before: highlights before the keyword (typically comment characters)
    -- * keyword: highlights of the keyword
    -- * after: highlights after the keyword (todo text)
    highlight = {
      -- enable multine todo comments
      multiline = true,

      -- "fg" or "bg" or empty.
      before = "",

      -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty.
      -- (wide and wide_bg is the same as bg, but will also highlight
      -- surrounding characters, wide_fg acts accordingly but with fg).
      keyword = "wide",

      -- "fg" or "bg" or empty.
      after = "",
    },
  },
}
