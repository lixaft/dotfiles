local set = require("lixaft.core.keymap").set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lixaft.disable")
require("lixaft.keymaps")
require("lixaft.operators")
require("lixaft.motions")
require("lixaft.options")
require("lixaft.colors")

vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require("lazy").setup({ import = "lixaft.plugins" }, {
  default = {
    lazy = true,
  },

  ui = {
    border = "rounded",
  },

  dev = {
    path = os.getenv("HOME") .. "/dev",
  },

  install = {
    colorscheme = { "tokyonight" },
  },

  change_detection = {
    enable = true,
    notify = false,
  },
})

require("lazy.view.config").keys.close = "<esc>"
set("n", "<leader>l", "<cmd>Lazy<cr>")
