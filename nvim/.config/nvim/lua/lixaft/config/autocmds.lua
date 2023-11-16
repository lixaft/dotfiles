local map = require("lixaft.utils.keymap").set

local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup("highlight_yank"),
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup("q_exit"),
  pattern = {
    "checkhealth",
    "fugitive",
    "harpoon",
    "help",
    "lazy",
    "lspinfo",
    "man",
    "mason",
    "notify",
    "qf",
    "startuptime",
    "tsplayground",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    map("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup("escape_exit"),
  pattern = {
    "harpoon",
    "lazy",
    "lspinfo",
    "mason",
    "qf",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    map("n", "<esc>", "<cmd>close<cr>", { buffer = event.buf, silent = true })
    map("n", "<c-c>", "<cmd>close<cr>", { buffer = event.buf, silent = true })
    map("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})
