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
    { "<leader>st", "<cmd>TodoTelescope<cr>" },
  },

  opts = {
    keywords = {
      NOTE = { icon = "" },
    },

    gui_style = {
      fg = "BOLD",
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
