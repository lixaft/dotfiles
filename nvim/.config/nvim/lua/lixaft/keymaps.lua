local set = require("lixaft.core.keymap").set

-- Source the current file.
set("n", "<leader><leader>", ":source<cr>")

-- Work with line wraps.
set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Make the current file executable.
set("n", "<leader>x", "<cmd>!chmod +x %<cr>")

-- Turn on/off highlight features.
set("n", "gh", "<cmd>nohlsearch<cr>")
set("n", "gs", "<cmd>set spell!<cr>")

-- Quote style.
set("v", [[g"]], [[:s/'/"/g<cr>:noh<cr>]])
set("v", [[g']], [[:s/"/'/g<cr>:noh<cr>]])

-- Move line(s) up and down.
set("v", "J", ":move '>+1<cr>gv=gv")
set("v", "K", ":move '<-2<cr>gv=gv")

-- Better vertical navigation.
set("n", "<c-d>", "<c-d>zz")
set("n", "<c-u>", "<c-u>zz")
set("n", "n", "nzz")
set("n", "N", "Nzz")

-- Clipboard operation.
set({ "n", "v" }, "gP", [["+P]])
set({ "n", "v" }, "gp", [["+p]])
set({ "v" }, "gy", [["+y]])
set({ "v" }, "<leader>p", [["_dP]])

-- Do not move cursor on join line.
set("n", "J", "mzJ`z")

-- Preserve selection on indent.
set("v", "<", "<gv")
set("v", ">", ">gv")

-- Move between tabs.
set("n", "<c-right>", "gt")
set("n", "<c-left>", "gT")

-- Move between windows.
set("n", "<left>", "<c-w><c-h>")
set("n", "<down>", "<c-w><c-j>")
set("n", "<up>", "<c-w><c-k>")
set("n", "<right>", "<c-w><c-l>")

-- Resize windows
set("n", "<s-left>", "10<c-w><")
set("n", "<s-down>", "5<c-w>+")
set("n", "<s-up>", "5<c-w>-")
set("n", "<s-right>", "10<c-w>>")

-- Move windows.
set("n", "<m-left>", "<c-w>H")
set("n", "<m-down>", "<c-w>J")
set("n", "<m-up>", "<c-w>K")
set("n", "<m-right>", "<c-w>L")
