-- The undo history visualizer for VIM.
--
-- https://github.com/mbbill/undotree

return {
  "mbbill/undotree",
  lazy = true,
  keys = {
    {
      "<leader>ut",
      "<cmd>UndotreeToggle<cr>",
      desc = "Toggle undotree",
    },
  },
}
