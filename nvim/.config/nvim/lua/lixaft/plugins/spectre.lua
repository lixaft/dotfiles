-- Find the enemy and replace them with dark power.
--
-- https://github.com/nvim-pack/nvim-spectre

return {
  "nvim-pack/nvim-spectre",
  lazy = true,
  keys = {
    {
      "<leader>r",
      function()
        require("spectre").open()
      end,
      desc = "Replace in files (Spectre)",
    },
  },
}
