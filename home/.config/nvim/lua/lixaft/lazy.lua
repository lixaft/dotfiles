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
