require("treesitter-context").setup({
    -- Enable this plugin (Can be enabled/disabled later via commands).
    enable = true,

    -- How many lines the window should span. Values <= 0 mean no limit.
    max_lines = 0,

    -- Which context lines to discard if `max_lines` is exceeded.
    -- Choices: 'inner', 'outer'
    trim_scope = "outer",

    -- Minimum editor window height to enable context. Values <= 0 mean no limit.
    min_window_height = 0,

    -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
    patterns = {
        -- For all filetypes
        -- Note that setting an entry here replaces all other patterns for this
        -- entry. By setting the 'default' entry below, you can control which
        -- nodes you want to appear in the context window.
        default = {
            "class",
            "function",
            "method",
            "for",
            "while",
            "if",
            "switch",
            "case",
        },
        -- Patterns for specific filetypes
        -- If a pattern is missing, *open a PR* so everyone can benefit.
        tex = {
            "chapter",
            "section",
            "subsection",
            "subsubsection",
        },
        rust = {
            "impl_item",
            "struct",
            "enum",
        },
        scala = {
            "object_definition",
        },
        vhdl = {
            "process_statement",
            "architecture_body",
            "entity_declaration",
        },
        markdown = {
            "section",
        },
        elixir = {
            "anonymous_function",
            "arguments",
            "block",
            "do_block",
            "list",
            "map",
            "tuple",
            "quoted_content",
        },
        json = {
            "pair",
        },
        yaml = {
            "block_mapping_pair",
        },
    },
    exact_patterns = {
        -- Example for a specific filetype with Lua patterns
        -- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
        -- exactly match "impl_item" only)
        -- rust = true,
    },
})
