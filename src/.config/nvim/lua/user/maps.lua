local map = require("user.utilities.map")

-- Set the leader key on the space bar, laziness is the key!
vim.g.mapleader = " " -- luacheck: ignore

-- Make the current file executable.
map.normal("<leader>x", "<cmd>!chmod +x %<cr>")

-- Global folding.
map.normal("<leader>O", "ggVGzO<c-o>")
map.normal("<leader>C", "ggVGzC<c-o>")

-- Turn off highlighting.
map.normal("<leader>h", ":noh<cr>")
map.normal("<leader>s", ":set spell!<cr>")

-- Change single quite to double quote.
map.visual("<leader>", [[:s/'/"/g<cr>:noh<cr>]])
