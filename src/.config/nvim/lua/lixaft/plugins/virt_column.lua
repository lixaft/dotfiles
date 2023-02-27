-- Display a character as the colorcolumn.
--
-- https://github.com/lukas-reineke/virt-column.nvim

return {
  "lukas-reineke/virt-column.nvim",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    char = "│",
  },
}
