-- Improve neovim lsp experience.
--
-- https://github.com/glepnir/lspsaga.nvim

return {
  "glepnir/lspsaga.nvim",
  event = "LspAttach",
  keys = {
    { "gR", "<cmd>Lspsaga lsp_finder<cr>", desc = "LSP finder" },
    { "gd", "<cmd>Lspsaga goto_definition<cr>", desc = "LSP go definition" },
    { "gD", "<cmd>Lspsaga peek_definition<cr>", desc = "LSP show definition" },
    { "ga", "<cmd>Lspsaga code_action<cr>", desc = "LSP actions" },
    { "K", "<cmd>Lspsaga hover_doc<cr>", desc = "LSP hover doc" },
    { "g<", "<cmd>Lspsaga diagnostic_jump_prev<cr>", desc = "LSP previous" },
    { "g>", "<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "LSP next" },
    -- { "gr", "<cmd>Lspsaga rename<cr>", desc = "LSP rename" },
    -- { "gR", "<cmd>Lspsaga rename ++project<cr>", desc = "LSP rename" },
    { "<leader>o", "<cmd>Lspsaga outline<cr>", desc = "LSP rename" },
    {
      "gt",
      "<cmd>Lspsaga show_line_diagnostics<cr>",
      desc = "LSP line diagnostics",
    },
    {
      "gT",
      "<cmd>Lspsaga show_buf_diagnostics<cr>",
      desc = "LSP buffer diagnostics",
    },
    {
      "<leader>t",
      "<cmd>Lspsaga show_workspace_diagnostics<cr>",
      desc = "LSP workspace diagnostics",
    },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    ui = {
      title = true,
      border = "rounded",
    },

    beacon = { enable = false },
    lightbulb = { enable = false },
    symbol_in_winbar = { enable = false },

    finder = {
      keys = {
        jump_to = "p",
        expand_or_jump = "<cr>",
        vsplit = "s",
        split = "i",
        tabe = "t",
        tabnew = "r",
        quit = { "q", "<esc>" },
        close_in_preview = "<esc>",
      },
    },
    code_action = {
      keys = {
        quit = "q",
        exec = "<cr>",
      },
    },

    outline = {
      win_position = "left",
      keys = {
        expand_or_jump = "o",
        quit = "q",
      },
    },
  },
}
