-- Getting you where you want with the fewest keystrokes.
--
-- https://github.com/ThePrimeagen/harpoon

return {
  "ThePrimeagen/harpoon",
  lazy = true,
  keys = {
    {
      "<leader>a",
      function()
        require("harpoon.mark").add_file()
      end,
      desc = "Add the current file",
    },
    {
      "<c-h>",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Open the harpoon menu",
    },
    {
      "<c-j>",
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "Add the current file",
    },
    {
      "<c-k>",
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Add the current file",
    },
    {
      "<c-l>",
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "Add the current file",
    },
  },
}
