-- A Git wrapper so awesome, it should be illegal.
--
-- https://github.com/tpope/vim-fugitive

return {
  "tpope/vim-fugitive",
  lazy = true,
  keys = {
    { "<leader>g", vim.cmd.Git, { desc = "Open git wrapper " } },
  },
}
