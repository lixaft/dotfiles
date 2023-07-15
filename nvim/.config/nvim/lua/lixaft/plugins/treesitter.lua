-- Nvim Treesitter configurations and abstraction layer.

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufNewFile", "BufReadPost" },

  build = ":TSUpdate",

  opts = {
    ensure_installed = "all",
    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },
  },

  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
