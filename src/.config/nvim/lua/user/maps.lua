local map = require("user.utilities.map")

-- Set the leader key on the space bar, laziness is the key!
vim.g.mapleader = " " -- luacheck: ignore

-- Make the current file executable.
map.normal("<leader>x", "<cmd>!chmod +x %<cr>")

-- Global folding.
map.normal("<leader>zO", "ggVGzO<c-o>")
map.normal("<leader>zC", "ggVGzC<c-o>")

-- Turn off highlighting.
map.normal("<leader>h", ":noh<cr>")
map.normal("<leader>s", ":set spell!<cr>")

-- Change single quote to double quote.
map.visual("<leader>", [[:s/'/"/g<cr>:noh<cr>]])

-- Move line(s) up and down.
map.visual("J", ":move '>+1<cr>gv=gv")
map.visual("K", ":move '<-2<cr>gv=gv")

-- Better vertical navigation.
map.normal("<c-d>", "10j")
map.normal("<c-u>", "10k")
