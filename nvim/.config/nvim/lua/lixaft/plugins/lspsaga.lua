-- Improve neovim lsp experience.

return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  cmd = "Lspsaga",
  keys = {
    { "gR", "<cmd>Lspsaga finder<cr>" },
    { "gd", "<cmd>Lspsaga goto_definition<cr>" },
    { "K", "<cmd>Lspsaga hover_doc<cr>" },
    { "ga", "<cmd>Lspsaga code_action<cr>" },
    { "<leader>o", "<cmd>Lspsaga outline<cr>" },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    beacon = { enable = false },
    lightbulb = { enable = false },
    symbol_in_winbar = { enable = false },

    finder = {
      keys = {
        close = "<esc>",
        quit = "<esc>",
        toggle_or_open = "<cr>",
      },
    },

    ui = {
      border = "rounded",
      expand = "▶",
      collapse = "▼",
      lines = { " ", " ", " ", " ", " " },
    },
  },

  config = function(_, opts)
    require("lspsaga").setup(opts)
  end,
}
