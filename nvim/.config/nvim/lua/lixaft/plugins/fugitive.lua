-- A Git wrapper so awesome, it should be illegal.

return {
  "tpope/vim-fugitive",
  cmd = { "Git" },
  keys = {
    { "<leader>c", "<cmd>Git<cr>" },
    { "<leader>C", "<cmd>Git<cr><c-w>o" },
    { "<leader>B", "<cmd>Git blame -w<cr>" },
  },
}
