local map = require("lixaft.utilities.map")

-- Set the leader key on the space bar, laziness is the key!
vim.g.mapleader = " "

-- Make the current file executable.
map.n("<leader>x", "<cmd>!chmod +x %<cr>")

-- Turn off highlighting.
map.n("gh", ":nohlsearch<cr>")
map.n("gs", ":set spell!<cr>")

-- Change single quote to double quote.
map.v([[g"]], [[:s/'/"/g<cr>:noh<cr>]])

-- Move line(s) up and down.
map.v("J", ":move '>+1<cr>gv=gv")
map.v("K", ":move '<-2<cr>gv=gv")

-- Better vertical navigation.
map.n("<c-d>", "20jzz")
map.n("<c-u>", "20kzz")
map.n("n", "nzz")
map.n("N", "nzz")

-- Easy clipboapd common operations.
map.x("gP", [[_dP]])
map.n("gp", [["+p]])
map.v("gy", [["+y]])

-- Do not move cursor on J.
map.n("J", "mzJ`z")

-- Source current buffer.
map.n("<leader><leader>", ":source<cr>")
