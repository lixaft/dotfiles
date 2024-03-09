-- Highlight, list and search todo comments in your projects.

return {
  "folke/todo-comments.nvim",
  event = { "BufNewFile", "BufReadPost" },
  cmd = {
    "TodoLocList",
    "TodoQuickFix",
    "TodoTelescope",
    "TodoTrouble",
  },
  keys = {
    { "g<c-t>", "<cmd>TodoQuickFix<cr>" },
  },

  opts = {
    keywords = {
      NOTE = { icon = "" },
      TEST = { icon = "" },
      PY3 = { icon = "", color = "hint" },
    },

    gui_style = {
      fg = "BOLD",
    },

    colors = {
      test = { "String" },
    },

    highlight = {
      before = "",
      keyword = "fg",
      after = "",
      pattern = {
        [[.*<(KEYWORDS)\s*:]],
        [[.*<(KEYWORDS)\(\w+\)\s*:]],
      },
    },

    search = {
      args = {
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--hidden",
      },
      pattern = [[\b(KEYWORDS)(\(\w+\))?:]],
    },
  },

  config = function(_, opts)
    require("todo-comments").setup(opts)
    vim.api.nvim_set_hl(0, "@text.todo", { link = "@comment" })
    vim.api.nvim_set_hl(0, "@text.note", { link = "@comment" })
    vim.api.nvim_set_hl(0, "@text.warning", { link = "@comment" })
    vim.api.nvim_set_hl(0, "@text.danger", { link = "@comment" })
  end,
}
