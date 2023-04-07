-- A blazing fast and easy to configure neovim statusline plugin written in
-- pure lua.
--
-- https://github.com/nvim-lualine/lualine.nvim

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "folke/tokyonight.nvim",
  },
  opts = {
    options = {
      -- Lualine theme.
      theme = "tokyonight",

      component_separators = {
        left = "।",
        right = "।",
      },
      section_separators = {
        left = "",
        right = "",
      },

      disabled_filetypes = {
        statusline = {
          "neo-tree",
          "Trouble",
        },
        winbar = {},
      },
    },

    -- Available components:
    -- https://github.com/nvim-lualine/lualine.nvim#available-components
    sections = {
      lualine_a = {
        {
          "mode",
          -- separator = {
          --   left = "",
          --   right = "",
          -- },
        },
      },
      lualine_b = {
        "branch",
        "diff",
        {
          "diagnostics",
          symbols = {
            error = "✘ ",
            warn = "▲ ",
            hint = "⚑ ",
            info = " ",
          },
        },
      },
      lualine_c = {
        "filename",
      },
      lualine_x = {
        "encoding",
        "fileformat",
        "filetype",
      },
      lualine_y = {
        "progress",
      },
      lualine_z = {
        {
          "location",
          separator = {
            -- left = "",
            -- right = "",
          },
        },
      },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
  },
}
