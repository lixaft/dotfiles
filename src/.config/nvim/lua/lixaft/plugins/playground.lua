-- Treesitter playground integrated into Neovim.
--
-- https://github.com/nvim-treesitter/playground

return {
  "nvim-treesitter/playground",
  keys = {
    {
      "<leader>p",
      "<cmd>TSPlaygroundToggle<cr>",
      desc = "Toggle Treesitter Playground",
    },
    {
      "<leader>P",
      "<cmd>TSHighlightCapturesUnderCursor<cr>",
      desc = "Show the hightlight group under cursor",
    },
  },
  require = {
    "nvim-treesitter/nvim-treesitter",
  },
}
