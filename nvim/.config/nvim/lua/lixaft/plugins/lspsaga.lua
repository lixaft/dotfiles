-- Improve neovim lsp experience.

return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  cmd = "Lspsaga",
  keys = {
    { "K", "<cmd>Lspsaga hover_doc<cr>" },
    { "gR", "<cmd>Lspsaga finder<cr>" },
    { "gd", "<cmd>Lspsaga goto_definition<cr>" },
    { "ga", "<cmd>Lspsaga code_action<cr>" },
    { "[d", "<cmd>Lspsaga diagnostic_jump_previous<cr>" },
    { "]d", "<cmd>Lspsaga diagnostic_jump_next<cr>" },
    { "<leader>o", "<cmd>Lspsaga outline<cr>" },
    { "<leader>t", "<cmd>Lspsaga term_toggle<cr>" },
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
        vsplit = "<c-v>",
        toggle_or_open = "<cr>",
      },
    },

    code_action = {
      keys = {
        quit = "<esc>",
      },
    },

    outline = {
      win_position = "left",
      close_after_jump = true,
      keys = {
        jump = "<cr>",
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
