-- Highly extendable fuzzy finder over lists.
--
-- https://github.com/nvim-telescope/telescope.nvim

return {
  "nvim-telescope/telescope.nvim",
  lazy = true,
  cmd = "Telescope",
  keys = {
    -- File pickers.
    { "<c-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Grep" },

    -- Vim pickers.
    { "<leader>sc", "<cmd>Telescope commands<cr>", desc = "Commands" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
    { "<leader>st", "<cmd>Telescope colorscheme<cr>", desc = "Pick colors" },
    { "<leader>sr", "<cmd>Telescope registers<cr>", desc = "Copy register" },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "List keymaps" },
    { "<leader>sl", "<cmd>Telescope filetypes<cr>", desc = "Select language" },

    -- LSP pickers.
    {
      "<leader>sd",
      "<cmd>Telescope lsp_document_symbols<cr>",
      desc = "Pick document symbol",
    },
    {
      "<leader>:",
      "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
      desc = "Pick project symbol",
    },
  },
  opts = {
    defaults = {
      -- The character(s) that will be shown in front of Telescope's
      -- prompt.
      prompt_prefix = "  ",

      -- The character(s) that will be shown in front of the current
      -- selection.
      selection_caret = " ",

      -- Determines the default layout of Telescope pickers.
      layout_strategy = "flex",

      -- Determines the default configuration values for layout
      -- strategies.
      layout_config = {

        -- layout swaps between `horizontal` and `vertical` strategies
        -- based on the window width.
        flex = {
          flip_columns = 120,
        },
      },
    },

    pickers = {
      -- Default configuration for builtin pickers.
      find_files = {
        find_command = {
          "rg",
          "--files",
          "--hidden",
          "--glob",
          "!**/.git/*",
        },
      },

      -- Search for a string and get results live as you type, respects
      -- .gitignore.
      live_grep = {},
    },
  },
}
