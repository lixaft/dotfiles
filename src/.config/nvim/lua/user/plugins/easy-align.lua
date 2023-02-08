-- TODO:
-- A simple, easy-to-use Vim alignment plugin.
--
-- https://github.com/junegunn/vim-easy-align

return {
  "junegunn/vim-easy-align",
  lazy = true,
  keys = {
    { "<leader>ga", "<cmd>EasyAlign<cr>", desc = "Easy align" },
  },
}
