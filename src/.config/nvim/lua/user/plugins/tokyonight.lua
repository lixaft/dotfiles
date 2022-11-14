require("tokyonight").setup({
    -- The theme comes in three styles, `storm`, `moon`,
    -- a darker variant `night` and `day`.
    style = "night",

    -- The theme is used when the background is set to light.
    light_style = "day",

    -- Enable this to disable setting the background color.
    transparent = true,

    -- Configure the colors used when opening a `:terminal` in Neovim.
    terminal_colors = true,

    styles = {

        -- Style to be applied to different syntax groups.
        -- Value is any valid attr-list value for `:help nvim_set_hl`.
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},

        -- Background styles. Can be "dark", "transparent" or "normal".
        -- style for sidebars, see below.
        sidebars = "transparent",
        -- style for floating windows.
        floats = "transparent",
    },

    -- Set a darker background on sidebar-like windows.
    -- For example: `["qf", "vista_kind", "terminal", "packer"]`.
    sidebars = {},

    -- Adjusts the brightness of the colors of the **Day** style.
    -- Number between 0 and 1, from dull to vibrant colors.
    day_brightness = 0.3,

    -- Enabling this option, will hide inactive statuslines and replace them
    -- with a thin border instead. Should work with the standard **StatusLine**
    -- and **LuaLine**.
    hide_inactive_statusline = false,

    -- Dims inactive windows.
    dim_inactive = false,

    -- When `true`, section headers in the lualine theme will be bold.
    lualine_bold = true,

    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with a ColorScheme table.
    ---@param colors ColorScheme
    on_colors = function(_) end,

    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table.
    ---@param highlights Highlights
    ---@param colors ColorScheme
    on_highlights = function(highlights, colors)
        highlights.ExtraWhitespace = { bg = colors.red }
        highlights.ColorColumn = { bg = colors.dark3 }
        highlights.LineNr = { fg = colors.dark3 }
    end,
})

vim.cmd("colorscheme tokyonight")
