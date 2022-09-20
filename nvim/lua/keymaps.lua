-- Define keymaps for Noevim

local wrapper = function(mode)
    local internal = function(key, command)
        vim.api.nvim_set_keymap(
            mode,
            key,
            command,
            {noremap = true, silent = true}
        )
    end
    return internal
end

local insert = wrapper("i")
local normal = wrapper("n")
local visual = wrapper("v")

-- Move line around.
normal("<c-j>", ":move .+1<cr>==")
normal("<c-k>", ":move .-2<cr>==")
visual("<c-j>", ":move '>+1<cr>gv=gv")
visual("<c-k>", ":move '<-2<cr>gv=gv")

-- Easy configuration reloads.
normal("<leader>ev", ":split $MYVIMRC<cr>")
normal("<leader>sv", ":source $MYVIMRC<cr>")

-- Make the current file executable.
normal("<leader>x", "<cmd>!chmod +x %<cr>")

-- Open telescope.
normal("<C-p>", ":Telescope find_files<cr>")
