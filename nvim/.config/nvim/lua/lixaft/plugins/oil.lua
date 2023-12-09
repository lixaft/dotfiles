-- Neovim file explorer: edit your filesystem like a buffer.

return {
  "stevearc/oil.nvim",
  lazy = false,
  cmd = { "Oil" },
  keys = {
    { "-", "<cmd>Oil<cr>" },
    {
      "+",
      function()
        require("oil").open(vim.fn.getcwd())
      end,
    },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },

  config = function(_, opts)
    require("oil").setup(opts)
  end,

  opts = {
    win_options = {
      signcolumn = "yes",
    },
    view_options = {
      show_hidden = false,
      is_hidden_file = function(file, _)
        local name = {
          ".DS_Store",
          ".git",
          ".mypy_cache",
          ".nox",
          ".pytest_cache",
          ".ruff_cache",
          ".tox",
          "__pycache__",
          "build",
          "dist",
          "venv",
        }
        local ext = {
          ".egg-info",
          ".pyc",
        }
        local is_hidden = false
        for _, v in ipairs(name) do
          if file == v then
            is_hidden = true
            break
          end
        end

        if not is_hidden then
          for _, v in ipairs(ext) do
            if vim.endswith(file, v) then
              is_hidden = true
              break
            end
          end
        end

        return is_hidden
      end,
    },
    use_default_keymaps = false,
    keymaps = {
      ["-"] = "actions.close",
      ["+"] = "actions.close",
      ["<c-c>"] = "actions.close",
      ["<cr>"] = "actions.select",
      ["<c-t>"] = "actions.select_tab",
      ["<c-v>"] = "actions.select_vsplit",
      ["<c-x>"] = "actions.select_split",
      ["."] = "actions.parent",
      ["<c-i>"] = "actions.toggle_hidden",
      ["<c-l>"] = "actions.refresh",
      ["P"] = "actions.preview",
      ["gs"] = "actions.change_sort",
      ["gx"] = "actions.open_external",
      ["gy"] = "actions.copy_entry_path",
      ["<c-q>"] = function()
        require("oil.actions").send_to_qflist.callback()
        vim.cmd("copen")
      end,
    },
  },
}
