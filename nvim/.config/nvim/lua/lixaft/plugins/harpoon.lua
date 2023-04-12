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
      "<leader>h",
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      desc = "Open the harpoon menu",
    },
    {
      "<c-h>",
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "Go to file 1",
    },
    {
      "<c-t>",
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Go to file 2",
    },
    {
      "<c-n>",
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "Go to file 3",
    },
    {
      "<c-s>",
      function()
        require("harpoon.ui").nav_file(4)
      end,
      desc = "Go to file 4",
    },
  },
}
