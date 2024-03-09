local set = require("lixaft.utils.keymap").set

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

require("lazy.view.config").keys.abort = "<c-q>"
set("n", "<leader>l", "<cmd>Lazy<cr>")
