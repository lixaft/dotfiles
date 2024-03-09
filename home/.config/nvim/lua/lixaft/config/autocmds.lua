local group = vim.api.nvim_create_augroup("lixaft", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
    group = group,
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual" })
    end,
})

vim.api.nvim_create_autocmd("TermOpen", {
    group = group,
    pattern = "*",
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
        vim.opt_local.signcolumn = "no"
        vim.opt_local.spell = false
        vim.opt_local.cursorline = false
        vim.cmd([[DisableWhitespace]])
        vim.cmd([[startinsert]])
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = {
        "checkhealth",
        "help",
        "lazy",
        "lspinfo",
        "man",
        "notify",
        "startuptime",
        "tsplayground",
    },
    callback = function(event)
        vim.bo[event.buf].buflisted = false
        vim.keymay.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = {
        "fugitive",
        "fugitiveblame",
        "harpoon",
        "lazy",
        "lspinfo",
        "mason",
        "qf",
    },
    callback = function(event)
        vim.bo[event.buf].buflisted = false
        vim.keymap.set("n", "<esc>", "<cmd>close<cr>", { buffer = event.buf, silent = true })
        vim.keymap.set("n", "<c-c>", "<cmd>close<cr>", { buffer = event.buf, silent = true })
        vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
    end,
})
