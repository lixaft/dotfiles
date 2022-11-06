-- Disable background color.
vim.cmd("autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE")

-- Use palenight colorsheme.
vim.cmd("colorscheme palenight")

-- Change the background color for extra whitespace.
vim.cmd("highlight ExtraWhitespace ctermbg=LightRed guibg=LightRed")

-- Change ruler color.
vim.cmd("highlight ColorColumn guifg=#292d3e guibg=#434758")
