-- A pretty diagnostics, references, telescope results, quickfix and location
-- list to help you solve all the trouble your code is causing.

-- TODO: Check after installing lsp.
return {
  "folke/trouble.nvim",
  cmd = {
    "Trouble",
    "TroubleToggle",
  },
  keys = {
    { "<leader>T", "<cmd>TroubleToggle<cr>" },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    use_diagnostic_signs = false,
    mode = "document_diagnostics",

    signs = {
      error = "✘ ",
      warning = "▲ ",
      hint = "⚑ ",
      information = " ",
      other = "﫠",
    },
  },
}
