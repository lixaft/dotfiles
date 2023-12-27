local set = require("lixaft.utils.keymap").set

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

-- Move line(s) up and down.
set("v", "J", ":move '>+1<cr>gv=gv")
set("v", "K", ":move '<-2<cr>gv=gv")

-- Better vertical navigation.
set("n", "<c-o>", "<c-o>zz")
set("n", "<c-i>", "<c-i>zz")
set("n", "<c-d>", "<c-d>zz")
set("n", "<c-u>", "<c-u>zz")
set("n", "n", "nzz")
set("n", "N", "Nzz")

-- Paste over visual selection.
set({ "v" }, "<leader>p", [["_dP]])

-- Do not move cursor on join line.
set("n", "J", "mzJ`z")

-- Preserve selection on indent.
set("v", "<", "<gv")
set("v", ">", ">gv")

-- Navigate quickfix list.
set("n", "<c-j>", ":cnext<cr>zz")
set("n", "<c-k>", ":cprev<cr>zz")
set("n", "<leader>j", ":lnext<cr>zz")
set("n", "<leader>k", ":lprev<cr>zz")

-- Make `n` and `N` search consistent between `/` and `?`.
set({ "n", "x", "o" }, "n", "'Nn'[v:searchforward]", { expr = true })
set({ "n", "x", "o" }, "N", "'nN'[v:searchforward]", { expr = true })

-- Teminal.
set("n", "<leader>t", "<cmd>term<cr>")

-- Better window navigation.
set("n", "<up>", "<c-w>k")
set("n", "<down>", "<c-w>j")
set("n", "<left>", "<c-w>h")
set("n", "<right>", "<c-w>l")

-- Escape (keep it hidden in the bottom of the file :s).
set({ "n", "i" }, "<c-c>", "<esc>")

-- Used for formatting.
set("n", "<c-f>", function() end)
