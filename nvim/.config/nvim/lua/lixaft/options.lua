local opt = vim.opt

-- I hate you but you can still be useful sometimes...
opt.mouse = "a"

-- Make sure colors are enable.
opt.termguicolors = true

-- Enable all syntax highlighting.
opt.syntax = "on"

-- Turn that damn bell off...
opt.belloff = "all"

-- Add cursor position indication.
opt.colorcolumn = { "80", "100" }
opt.number = true
opt.relativenumber = true

-- Always show the sign column.
opt.signcolumn = "yes"

-- Keep a minimum number of lines above and below the cursor.
opt.scrolloff = 8

-- Set indentation.
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

-- Disable line wrapping.
opt.linebreak = false
opt.wrap = false

-- Search options.
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.smartcase = true

-- Hide startup message.
opt.shortmess = "I"

-- A bit of backup, but swapfile can be annoying sometimes...
opt.swapfile = true
opt.backup = true
opt.undofile = true
opt.directory = os.getenv("HOME") .. "/.cache/nvim/swap"
opt.backupdir = os.getenv("HOME") .. "/.cache/nvim/backup"
opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undo"

-- Define where to split windows.
opt.splitright = true
opt.splitbelow = true
