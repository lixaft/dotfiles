-- Highly extendable fuzzy finder over lists.
--
-- https://github.com/nvim-telescope/telescope.nvim

local function cmd(name)
  return "<cmd>Telescope " .. name .. "<cr>"
end

return {
  "nvim-telescope/telescope.nvim",
  lazy = true,
  cmd = "Telescope",
  keys = {
    -- File pickers.
    { "<c-p>", cmd("find_files"), desc = "Find files" },
    { "<leader>/", cmd("live_grep"), desc = "Grep files" },

    -- Vim pickers.
    { "<leader>sc", cmd("commands"), desc = "Find commands" },
    { "<leader>sh", cmd("help_tags"), desc = "Help Pages" },
    { "<leader>st", cmd("colorscheme"), desc = "Pick colorscheme" },
    { "<leader>sr", cmd("registers"), desc = "Copy register" },
    { "<leader>sk", cmd("keymaps"), desc = "List keymaps" },
    { "<leader>sl", cmd("filetypes"), desc = "Select language" },

    -- LSP pickers.
    { "<leader>sl", cmd("lsp_references"), desc = "Find references" },
    { "<leader>sd", cmd("diagnostics"), desc = "List diagnostics" },
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
