-- Show code context.
--
-- https://github.com/nvim-treesitter/nvim-treesitter-context

return {
  "nvim-treesitter/nvim-treesitter-context",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
}
