-- Nvim Treesitter configurations and abstraction layer.
--
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = true,
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    -- A list of parser names, or "all".
    ensure_installed = "all",

    -- Enable highlight.
    highlight = {
      enable = true,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
