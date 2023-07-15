-- The undo history visualizer for VIM.

return {
  "mbbill/undotree",
  cmd = {
    "UndotreeToggle",
  },
  keys = {
    { "<leader>u", "<cmd>UndotreeToggle<cr>" },
  },
}
