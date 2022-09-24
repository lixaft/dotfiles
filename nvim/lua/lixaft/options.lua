-- Allow the mouse to interact with the editor.
vim.opt.mouse = "a"

-- Enable true colors support.
vim.opt.termguicolors = true

-- Enable syntax highlighting.
vim.opt.syntax = "on"

-- Yes I know, you can shut up vim... <3
vim.opt.errorbells = false
vim.opt.visualbell = false

-- Add some visual indications so we know where we are :)
vim.opt.colorcolumn = {"80", "100"}
vim.opt.number = true
vim.opt.relativenumber = true

-- Keep a minimum number of lines above and below the cursor.
vim.opt.scrolloff = 8

-- Indent using 4 spaces and enable smart indentation options.
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Define the folding properties.
vim.opt.foldlevelstart = 99
vim.opt.foldmethod = "indent"
vim.opt.foldnestmax = 99

-- Use the system clipboard for yanking and pasting operations.
vim.opt.clipboard = "unnamed"

-- A bit of backup, but swapfile can be annoying sometimes.
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim2/undodir"
vim.opt.undofile = true

-- Disable line wrapping and set smart wrapping for when it is activated.
vim.opt.linebreak = true
vim.opt.wrap = false

-- Searching options.
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

-- Set the leader key on the space bar, laziness is the key!
vim.g.mapleader = " "
