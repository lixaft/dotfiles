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
    "help",
    "lazy",
    "lspinfo",
    "man",
    "notify",
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
    "fugitive",
    "fugitiveblame",
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

vim.api.nvim_create_autocmd("TermOpen", {
  group = augroup("term"),
  pattern = "*",
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.signcolumn = "no"
    vim.opt_local.spell = false
    vim.opt_local.cursorline = false
    vim.cmd("startinsert")
    vim.cmd("DisableWhitespace")
  end,
})
