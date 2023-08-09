-- Nvim Treesitter configurations and abstraction layer.

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufNewFile", "BufReadPost" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },

  build = ":TSUpdate",

  opts = {
    ensure_installed = "all",
    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },

    textobjects = {

      select = {
        enable = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
          ["al"] = "@assignment.lhs",
          ["ar"] = "@assignment.rhs",
        },
        selection_modes = {
          ["@class.inner"] = "V",
          ["@class.outer"] = "V",
          ["@function.inner"] = "V",
          ["@function.outer"] = "V",
        },
      },

      swap = {
        enable = true,
        swap_next = {
          ["<leader>pn"] = "@parameter.inner",
        },
        swap_previous = {
          ["<leader>pN"] = "@parameter.inner",
        },
      },

      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]c"] = "@class.outer",
          ["]f"] = "@function.outer",
          ["]r"] = "@return.outer",
        },
        goto_next_end = {
          ["]C"] = "@class.outer",
          ["]F"] = "@function.outer",
          ["]R"] = "@return.outer",
        },
        goto_previous_start = {
          ["[c"] = "@class.outer",
          ["[f"] = "@function.outer",
          ["[r"] = "@return.outer",
        },
        goto_previous_end = {
          ["[C"] = "@class.outer",
          ["[F"] = "@function.outer",
          ["[R"] = "@return.outer",
        },
        goto_next = {
          ["]d"] = "@conditional.outer",
        },
        goto_previous = {
          ["[d"] = "@conditional.outer",
        },
      },
    },
  },

  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
