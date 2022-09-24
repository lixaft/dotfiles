local Remap = require("lixaft.utilities.remap")
local insert = Remap.insert
local normal = Remap.normal
local visual = Remap.visual

-- Move line around.
normal("<c-j>", ":move .+1<cr>==")
normal("<c-k>", ":move .-2<cr>==")
visual("<c-j>", ":move '>+1<cr>gv=gv")
visual("<c-k>", ":move '<-2<cr>gv=gv")

-- Easy configuration reloads.
normal("<leader>ev", ":split $MYVIMRC<cr>")
normal("<leader>sv", ":source $MYVIMRC<cr>")

-- Make the current file executable.
normal("<leader>x", "<cmd>!chmod +x %<cr>")

-- Global folding.
normal("<leader>O", "ggVGzO<c-o>")
normal("<leader>C", "ggVGzC<c-o>")

-- Launch Netrw.
normal("<leader>ps", ":Explore<cr>")
