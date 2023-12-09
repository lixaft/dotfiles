-- Highly extendable fuzzy finder over lists.

return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  keys = {
    { "<c-p>", "<cmd>Telescope find_files<cr>" },
    { "<leader>/", "<cmd>Telescope live_grep<cr>" },

    { "<leader>sa", "<cmd>Telescope autocommands<cr>" },
    { "<leader>sc", "<cmd>Telescope commands<cr>" },
    { "<leader>sf", "<cmd>Telescope filetypes<cr>" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>" },
    { "<leader>sH", "<cmd>Telescope highlights<cr>" },
    { "<leader>sm", "<cmd>Telescope man_pages<cr>" },
    { "<leader>sM", "<cmd>Telescope marks<cr>" },
    { "<leader>s/", "<cmd>Telescope search_history<cr>" },
    { "<leader>sn", "<cmd>Telescope spell_suggest<cr>" },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>" },
    { "<leader>sr", "<cmd>Telescope registers<cr>" },
    { "<leader>ss", "<cmd>Telescope resume<cr>" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  opts = {
    defaults = {
      prompt_prefix = "  ",
      selection_caret = " ",

      layout_strategy = "flex",
      layout_config = {
        flex = {
          flip_columns = 120,
        },
      },
    },

    pickers = {
      find_files = {
        find_command = {
          "rg",
          "--files",
          "--hidden",
          "--glob",
          "!**/.git/*",
        },
      },

      live_grep = {
        additional_args = {
          "--hidden",
          "--glob",
          "!**/.git/*",
        },
      },
    },
  },
}
