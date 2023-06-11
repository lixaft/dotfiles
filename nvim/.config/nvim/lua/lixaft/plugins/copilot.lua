-- Neovim plugin for GitHub Copilot.
--
-- https://github.com/github/copilot.vim

return {
  "zbirenbaum/copilot.lua",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  config = true,
  opts = {
    panel = {
      auto_refresh = true,
      keymap = {
        jump_prev = "[[",
        jump_next = "]]",
        accept = "<cr>",
        refresh = "gr",
        open = "<m-p>",
      },
    },

    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = "<m-cr>",
        next = "<m-n>",
        prev = "<m-N>",
        accept_word = false,
        accept_line = false,
        dismiss = nil,
      },
    },
  },
}
