-- A blazing fast and easy to configure neovim statusline plugin written in
-- pure lua.

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "folke/tokyonight.nvim",
    "nvim-tree/nvim-web-devicons",
  },

  opts = {

    options = {
      globalstatus = true,

      component_separators = {
        left = "।",
        right = "।",
      },

      section_separators = {
        left = "",
        right = "",
      },

      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },

      sections = {
        lualine_a = {
          "mode",
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
          "location",
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
  },
}
