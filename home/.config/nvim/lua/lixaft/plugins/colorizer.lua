-- A high-performance color highlighter for Neovim which has no external
-- dependencies! Written in performant Luajit.

return {
  "norcalli/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },

  opts = {
    filetypes = {
      "*",
      css = { css = true },
    },
    default = {
      RGB = false,
      RRGGBBAA = true,
      names = false,
    },
  },

  config = function(_, opts)
    require("colorizer").setup(opts.filetypes, opts.default)
  end,
}
