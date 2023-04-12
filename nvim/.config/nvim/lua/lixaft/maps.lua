local map = require("lixaft.utilities.map")

-- Set the leader key on the space bar, laziness is the key!
vim.g.mapleader = " "

-- Make the current file executable.
map.normal("<leader>x", "<cmd>!chmod +x %<cr>")

-- Turn off highlighting.
map.normal("gh", ":nohlsearch<cr>")
map.normal("gs", ":set spell!<cr>")

-- Change single quote to double quote.
map.visual([[g"]], [[:s/'/"/g<cr>:noh<cr>]])

-- Move line(s) up and down.
map.visual("J", ":move '>+1<cr>gv=gv")
map.visual("K", ":move '<-2<cr>gv=gv")

-- Better vertical navigation.
map.normal("<c-d>", "20jzz")
map.normal("<c-u>", "20kzz")
map.normal("n", "nzz")
map.normal("N", "nzz")

-- Easy clipboapd common operations.
map.x("gP", [[_dP]])
map.normal("gp", [["+p]])
map.visual("gy", [["+y]])

-- Do not move cursor on J.
map.normal("J", "mzJ`z")

-- Source current buffer.
map.normal("<leader><leader>", ":source<cr>")
