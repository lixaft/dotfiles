-- Getting you where you want with the fewest keystrokes.
local partial = require("lixaft.core.utils").partial

return {
  "ThePrimeagen/harpoon",
  keys = {
    { "<c-g>", partial("harpoon.mark", "add_file") },
    { "<c-c>", partial("harpoon.ui", "toggle_quick_menu") },
    { "<c-h>", partial("harpoon.ui", "nav_file", { 1 }) },
    { "<c-t>", partial("harpoon.ui", "nav_file", { 2 }) },
    { "<c-n>", partial("harpoon.ui", "nav_file", { 3 }) },
    { "<c-s>", partial("harpoon.ui", "nav_file", { 4 }) },
  },
}
