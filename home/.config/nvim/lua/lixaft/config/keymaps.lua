-- Keep cursor at the middle of the screen.
vim.keymap.set("n", "<c-o>", "<c-o>zz")
vim.keymap.set("n", "<c-i>", "<c-i>zz")
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Make `j` and `k` more natural with line wrap.
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Make `n` and `N` search consistent between `/` and `?`.
vim.keymap.set({ "n", "x", "o" }, "n", "'Nn'[v:searchforward]", { expr = true })
vim.keymap.set({ "n", "x", "o" }, "N", "'nN'[v:searchforward]", { expr = true })

-- Go to next/prev element of loclist and qflist.
vim.keymap.set("n", "<c-j>", ":cnext<cr>zz")
vim.keymap.set("n", "<c-k>", ":cprev<cr>zz")
vim.keymap.set("n", "<leader>j", ":lnext<cr>zz")
vim.keymap.set("n", "<leader>k", ":lprev<cr>zz")

-- Move line(s) up and down.
vim.keymap.set("v", "J", ":move '>+1<cr>gv=gv")
vim.keymap.set("v", "K", ":move '<-2<cr>gv=gv")

-- Paste over visual selection.
vim.keymap.set({ "v" }, "<leader>p", [["_dP]])

-- Do not move cursor on join line.
vim.keymap.set("n", "J", "mzJ`z")

-- Preserve selection on indent.
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Toggle highlight features.
vim.keymap.set("n", "gh", "<cmd>nohlsearch<cr>")
vim.keymap.set("n", "gs", "<cmd>set spell!<cr>")

-- Terminal.
vim.keymap.set("n", "<leader>t", "<cmd>term<cr>")

-- Nop.
vim.keymap.set("n", "<c-f>", function() end)

-- Escape (keep it hidden in the bottom of the file :s).
vim.keymap.set({ "n", "i" }, "<c-c>", "<esc>")
