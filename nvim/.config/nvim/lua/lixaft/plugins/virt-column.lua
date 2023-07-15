-- Display a character as the colorcolumn.

return {
  "lukas-reineke/virt-column.nvim",
  event = { "BufEnter" },

  opts = {
    char = "│",
  },
}
