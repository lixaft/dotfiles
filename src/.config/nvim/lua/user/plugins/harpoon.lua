local map = require("user.utilities.map")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

map.normal("<leader>a", mark.add_file)
map.normal("<leader>0", ui.toggle_quick_menu)

map.normal("<leader>1", function() ui.nav_file(1) end)
map.normal("<leader>2", function() ui.nav_file(2) end)
map.normal("<leader>3", function() ui.nav_file(3) end)
map.normal("<leader>4", function() ui.nav_file(4) end)
