-- Neovim plugin for GitHub Copilot.

return {
  "zbirenbaum/copilot.lua",
  event = { "InsertEnter" },

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
