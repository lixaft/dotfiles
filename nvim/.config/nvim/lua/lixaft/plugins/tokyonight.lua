-- A clean, dark Neovim theme written in Lua, with support for lsp, treesitter
-- and lots of plugins.
--
-- https://github.com/folke/tokyonight.nvim

return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    -- The theme comes in three styles, `storm`, `moon`, a darker variant
    -- `night` and `day`.
    style = "night",

    -- Enable this to disable setting the background color.
    transparent = true,

    styles = {
      -- Background styles. Can be "dark", "transparent" or "normal".
      -- Style for sidebars.
      sidebars = "transparent",
      -- Style for floating windows.
      floats = "transparent",
    },

    -- Set a darker background on sidebar-like windows.
    -- For example: `["qf", "vista_kind", "terminal", "packer"]`.
    sidebars = {},

    -- When `true`, section headers in the lualine theme will be bold.
    lualine_bold = true,

    -- You can override specific highlights to use other groups or a hex color
    -- function will be called with a Highlights and ColorScheme table.
    on_highlights = function(highlights, colors)
      highlights.CopilotSuggestion = { fg = colors.blue0 }
      highlights.DiagnosticVirtualTextError = { fg = colors.red1 }
      highlights.DiagnosticVirtualTextHint = { fg = colors.teal }
      highlights.DiagnosticVirtualTextInfo = { fg = colors.blue2 }
      highlights.DiagnosticVirtualTextWarn = { fg = colors.yellow }
      highlights.ExtraWhitespace = { bg = colors.red }
      highlights.LineNr = { fg = colors.dark3 }
      highlights.VirtColumn = { fg = colors.dark3 }
    end,
  },
}
