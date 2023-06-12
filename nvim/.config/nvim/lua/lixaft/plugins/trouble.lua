-- A pretty diagnostics, references, telescope results, quickfix and location
-- list to help you solve all the trouble your code is causing.
--
-- https://github.com/folke/trouble.nvim

return {
  "folke/trouble.nvim",
  lazy = true,
  cmd = { "TroubleToggle", "Trouble" },
  keys = {
    { "<leader>T", "<cmd>TroubleToggle<cr>", desc = "Toggle trouble" },
  },
  opts = {
    -- Enabling this will use the signs defined in your lsp client
    use_diagnostic_signs = false,

    -- Only display the diagnostics of the current buffer.
    mode = "document_diagnostics",

    signs = {
      -- Icons / text used for a diagnostic.
      error = "✘ ",
      warning = "▲ ",
      hint = "⚑ ",
      information = " ",
      other = "﫠",
    },
  },
}
