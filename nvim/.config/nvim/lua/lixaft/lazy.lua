-- A modern plugin manager for Neovim.
--
-- https://github.com/folke/lazy.nvim
local map = require("lixaft.utilities.map")

vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require("lazy").setup({
  import = "lixaft.plugins",
}, {
  ui = {
    border = "rounded",
  },
  dev = {
    path = "~/dev",
  },
  install = {
    missing = true,
    colorscheme = { "tokyonight" },
  },
  change_detection = {
    enable = true,
    notify = false,
  },
})

map.normal("<leader>l", ":Lazy<cr>")
