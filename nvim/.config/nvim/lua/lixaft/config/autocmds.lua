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
    "mason",
    "notify",
    "qf",
    "spectre_panel",
    "startuptime",
    "tsplayground",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    map("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup("esc_exit"),
  pattern = {
    "lazy",
    "lspinfo",
    "mason",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    map("n", "<esc>", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})
