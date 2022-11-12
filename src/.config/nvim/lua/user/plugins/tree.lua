local map = require("user.utilities.map")

-- Mappings.
map.normal("<leader>ps", ":NvimTreeFindFileToggle<cr>")

require("nvim-tree").setup({
    -- Completely disable netrw.
    disable_netrw = true,

    -- Will automatically open the tree when running setup if startup buffer is
    -- a directory, is empty or is unnamed. nvim-tree window will be focused.
    open_on_setup = true,

    -- Opens in place of the unnamed buffer if it's empty.
    hijack_unnamed_buffer_when_opening = true,

    -- Configuration for various actions.
    actions = {
        -- Configuration options for opening a file from nvim-tree.
        open_file = {
            -- Closes the explorer when opening a file.
            -- It will also disable preventing a buffer overriding the tree.
            quit_on_open = true,
        },

        remove_file = {
            -- Close any window displaying a file when removing the file from
            -- the tree.
            close_window = true,
        },

        -- A boolean value that toggle the use of system clipboard when
        -- copy/paste function are invoked. When enabled, copied text will be
        -- stored in registers '+' (system), otherwise, it will be stored in
        -- '1' and '"'.
        use_system_clipboard = true,
    },

    -- Window / buffer setup.
    view = {
        -- Resize the window on each draw based on the longest line.
        adaptive_size = true,
    },
})
