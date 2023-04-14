vim.cmd([[colorscheme tokyonight]])

-- Highlight yanked text.
vim.cmd([[
augroup highlight_yank
  autocmd!
   autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
augroup END
]])
