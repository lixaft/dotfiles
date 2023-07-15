-- A clean, dark Neovim theme written in Lua, with support for lsp, treesitter
-- and lots of plugins.

return {
  "folke/tokyonight.nvim",

  opts = {
    style = "night",
    transparent = true,

    styles = {
      floats = "transparent",
      sidebars = "transparent",
    },

    lualine_bold = true,

    on_highlights = function(hl, colors)
      hl.LineNr = { fg = colors.dark3 }
      hl.VirtColumn = { fg = colors.dark3 }

      hl.DiagnosticVirtualTextError = { fg = colors.red1 }
      hl.DiagnosticVirtualTextHint = { fg = colors.teal }
      hl.DiagnosticVirtualTextInfo = { fg = colors.blue2 }
      hl.DiagnosticVirtualTextWarn = { fg = colors.yellow }

      hl.IlluminatedWordRead = { underline = true }
      hl.IlluminatedWordText = { underline = true }
      hl.IlluminatedWordWrite = { underline = true }

      hl.CopilotSuggestion = { fg = colors.blue0 }
      hl.ExtraWhitespace = { bg = colors.red }
    end,
  },

  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd("colorscheme tokyonight")
  end,
}
