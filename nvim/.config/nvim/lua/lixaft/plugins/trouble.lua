-- A pretty diagnostics, references, telescope results, quickfix and location
-- list to help you solve all the trouble your code is causing.

return {
  "folke/trouble.nvim",
  cmd = {
    "Trouble",
    "TroubleToggle",
  },
  keys = {
    { "<leader>d", "<cmd>TroubleToggle<cr>" },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    use_diagnostic_signs = true,
    mode = "document_diagnostics",

    action_keys = {
      jump = {},
      jump_close = { "<cr>" },
    },
  },
}
