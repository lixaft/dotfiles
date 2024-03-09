-- Make sure colors are enable.
vim.opt.termguicolors = true

-- Hide startup message.
vim.opt.shortmess = "I"

-- I hate you but you can still be useful sometimes...
vim.opt.mouse = "a"

-- Turn that damn bell off...
vim.opt.belloff = "all"

-- Enable all syntax highlighting.
vim.opt.syntax = "on"

-- Always show the sign column.
vim.opt.signcolumn = "yes"

-- Add cursor position indication.
vim.opt.colorcolumn = { "80", "100" }
vim.opt.number = true
vim.opt.relativenumber = true

-- Keep a minimum number of lines above and below the cursor.
vim.opt.scrolloff = 8

-- Indentation.
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Search.
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Wrap.
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = "> "

-- Define where to split windows.
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Backup.
vim.opt.swapfile = true
vim.opt.backup = true
vim.opt.undofile = true
vim.opt.directory = os.getenv("HOME") .. "/.cache/nvim/swap"
vim.opt.backupdir = os.getenv("HOME") .. "/.cache/nvim/backup"
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undo"
