require("lualine").setup({
    options = {
        -- Lualine theme.
        theme = "palenight",

        -- Enables the display of icons alongside the component.
        icons_enabled = true,

        component_separators = {
            left = "",
            right = ""
        },
        section_separators = {
            left = "",
            right = ""
        },

        -- Filetypes to disable lualine for.
        disabled_filetypes = {
            -- Only ignores the ft for statusline.
            statusline = {},
            -- Only ignores the ft for winbar.
            winbar = {},
        },

        -- If current filetype is in this list it'll always be drawn as inactive
        -- statusline and the last window will be drawn as active statusline.
        ignore_focus = {},

        -- When set to true, left sections i.e. 'a','b' and 'c' can't take over
        -- the entire statusline even if neither of 'x', 'y' or 'z' are present.
        always_divide_middle = true,

        -- Enable global statusline (have a single statusline at bottom of
        -- neovim instead of one for  every window). This feature is only
        -- available in neovim 0.7 and higher.
        globalstatus = false,

        -- Sets how often lualine should refreash it's contents (in ms).
        refresh = {
            -- The refresh option sets minimum time that lualine tries.
            statusline = 1000,
            -- To maintain between refresh. It's not guarantied if situation.
            tabline = 1000,
            -- Arises that lualine needs to refresh itself before this time it'll do it.
            winbar = 1000,
        }
    },

    -- Available components:
    -- https://github.com/nvim-lualine/lualine.nvim#available-components
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {}
    },

    -- You can use lualine to display components in tabline. The configuration
    -- for tabline sections is exactly the same as that of the statusline.
    tabline = {},

    -- From neovim-0.8 you can customize your winbar with lualine. Winbar
    -- configuration is similar to statusline.
    winbar = {},
    inactive_winbar = {},

    -- Lualine extensions change statusline appearance for a window/buffer with
    -- specified filetypes.
    extensions = {},
})
