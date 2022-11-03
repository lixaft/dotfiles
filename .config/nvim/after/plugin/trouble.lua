local map = require("user.utilities.map")

-- Define hotkeys.
map.normal("<leader>t", "<cmd>TroubleToggl<cr>")

require("trouble").setup({
     -- Position of the list can be: bottom, top, left, right.
    position = "bottom",

    -- Height of the trouble list when position is top or bottom.
    height = 10,

    -- Width of the list when position is left or right.
    width = 50,

    -- Use devicons for filenames.
    icons = true,

    -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
    mode = "workspace_diagnostics",

    -- Icon used for open folds.
    fold_open = "",

    -- Icon used for closed folds.
    fold_closed = "",

    -- Group results by file.
    group = true,

    -- Add an extra new line on top of the list.
    padding = true,

     -- Key mappings for actions in the trouble list.
    action_keys = {
        -- Close the list.
        -- Map to `{}` to remove a mapping.
        close = "q",

        -- Cancel the preview and get back to your last window / buffer / cursor.
        cancel = "<esc>",

        -- Manually refresh.
        refresh = "r",

        -- Jump to the diagnostic or open / close folds.
        jump = {"<cr>", "<tab>"},

        -- Open buffer in new split.
        open_split = { "<c-x>" },

        -- Open buffer in new vsplit.
        open_vsplit = { "<c-v>" },

        -- Open buffer in new tab.
        open_tab = { "<c-t>" },

        -- Jump to the diagnostic and close the list.
        jump_close = {"o"},

        -- Toggle between "workspace" and "document" diagnostics mode.
        toggle_mode = "m",

        -- Toggle auto_preview.
        toggle_preview = "P",

        -- Opens a small popup with the full multiline message.
        hover = "K",

        -- Preview the diagnostic location.
        preview = "p",

        -- Close all folds.
        close_folds = {"zM", "zm"},

        -- Open all folds.
        open_folds = {"zR", "zr"},

        -- Toggle fold of current file.
        toggle_fold = {"zA", "za"},

        -- Previous item.
        previous = "k",

        -- Next item.
        next = "j"
    },


    -- Add an indent guide below the fold icons.
    indent_lines = true,

    -- Automatically open the list when you have diagnostics.
    auto_open = false,

    -- Automatically close the list when you have no diagnostics.
    auto_close = false,

    -- Automatically preview the location of the diagnostic.
    -- <esc> to close preview and go back to last window.
    auto_preview = true,

    -- Automatically fold a file trouble list at creation.
    auto_fold = false,

    -- For the given modes, automatically jump if there is only a single result.
    auto_jump = {"lsp_definitions"},

    -- Icons / text used for a diagnostic.
    signs = {
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠"
    },

    -- Enabling this will use the signs defined in your lsp client.
    use_diagnostic_signs = false,
})
