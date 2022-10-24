local R = require("lixaft.utilities.remap")

-- Easy configuration reloads.
R.normal("<leader>ev", ":split $MYVIMRC<cr>")
R.normal("<leader>sv", ":source $MYVIMRC<cr>")

-- Make the current file executable.
R.normal("<leader>x", "<cmd>!chmod +x %<cr>")

-- Global folding.
R.normal("<leader>O", "ggVGzO<c-o>")
R.normal("<leader>C", "ggVGzC<c-o>")

-- Launch Netrw.
R.normal("<leader>ps", ":Explore<cr>")

-- Turn off highlighting.
R.normal("<leader>h", ":noh<cr>")
R.normal("<leader>s", ":set spell!<cr>")
