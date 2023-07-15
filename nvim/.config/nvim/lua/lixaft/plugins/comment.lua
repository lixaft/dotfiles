-- Smart and powerful comment plugin for neovim. Supports treesitter, dot
-- repeat, left-right/up-down motions, hooks, and more.

return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },

  opts = {
    toggler = {
      line = "gcc",
      block = "gbc",
    },
    opleader = {
      line = "gc",
      block = "gb",
    },
    extra = {
      above = "gcO",
      below = "gco",
      eol = "gca",
    },
  },
}
