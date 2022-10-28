local map = require("lixaft.utilities.map")

-- Easy configuration reloads.
map.normal("<leader>ev", ":split $MYVIMRC<cr>")
map.normal("<leader>sv", ":source $MYVIMRC<cr>")

-- Make the current file executable.
map.normal("<leader>x", "<cmd>!chmod +x %<cr>")

-- Global folding.
map.normal("<leader>O", "ggVGzO<c-o>")
map.normal("<leader>C", "ggVGzC<c-o>")

-- Launch Netrw.
map.normal("<leader>ps", ":Explore<cr>")

-- Turn off highlighting.
map.normal("<leader>h", ":noh<cr>")
map.normal("<leader>s", ":set spell!<cr>")
