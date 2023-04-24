-- Set colorscheme.
vim.cmd([[colorscheme tokyonight]])

-- Highlight yanked text.
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 40 })
  end,
})
