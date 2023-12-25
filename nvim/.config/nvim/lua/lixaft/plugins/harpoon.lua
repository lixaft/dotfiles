-- Getting you where you want with the fewest keystrokes.
local map = require("lixaft.utils.keymap").set

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  init = function()
    local harpoon = require("harpoon")

    harpoon:setup({
      settings = {
        save_on_toggle = true,
      },
    })

    map("n", "<c-l>", function()
      harpoon:list():append()
    end)
    map("n", "<c-g>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list(), {
        border = "rounded",
        title_pos = "center",
      })
    end)

    map("n", "<c-h>", function()
      harpoon:list():select(1)
    end)
    map("n", "<c-t>", function()
      harpoon:list():select(2)
    end)
    map("n", "<c-n>", function()
      harpoon:list():select(3)
    end)
    map("n", "<c-s>", function()
      harpoon:list():select(4)
    end)

    map("n", "<leader>p", function()
      harpoon:list():prev()
    end)
    map("n", "<leader>n", function()
      harpoon:list():next()
    end)
  end,
}
