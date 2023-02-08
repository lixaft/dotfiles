require("user.utilities.option").setup({
  -- Enable all mouse interactions.
  mouse = "a",

  -- Enable true colors support.
  termguicolors = true,

  -- Enable syntax highlighting.
  syntax = "on",

  -- Don't be anoying vim... <3
  errorbells = false,
  visualbell = false,

  -- Add some visual indications so we know where we are :)
  colorcolumn = { "80", "100" },
  number = true,
  relativenumber = true,

  -- Always display the sign column.
  signcolumn = "yes",

  -- Keep a minimum number of lines above and below the cursor.
  scrolloff = 8,

  -- Indent using 4 spaces and enable smart indentation options.
  autoindent = true,
  expandtab = true,
  shiftwidth = 4,
  smartindent = true,
  softtabstop = 4,
  tabstop = 4,

  -- Define the fold options.
  foldlevelstart = 99,
  foldmethod = "indent",
  foldnestmax = 99,

  -- A bit of backup, but swapfile can be annoying sometimes...
  backup = false,
  swapfile = false,
  undodir = os.getenv("HOME") .. "/.cache/nvim/undodir",
  undofile = true,

  -- Disable line wrapping and set smart wrapping for when it is activated.
  linebreak = true,
  wrap = false,

  -- Search options.
  hlsearch = true,
  ignorecase = true,
  incsearch = true,
  smartcase = true,

  -- Time in milliseconds to wait for a mapped sequence to complete.
  timeoutlen = 500,
})
