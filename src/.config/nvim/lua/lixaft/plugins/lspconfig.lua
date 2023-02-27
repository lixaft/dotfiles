-- Quickstart configs for Nvim LSP
--
-- https://github.com/neovim/nvim-lspconfig

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  opts = {
    diagnostics = {
      -- Use underline for diagnostics (default true).
      underline = true,

      -- Use signs for diagnostics.
      signs = true,

      -- If false, diagnostics are only updated on InsertLeave.
      update_in_insert = false,

      -- Use virtual text for diagnostics.
      virtual_text = {
        spacing = 4,
        prefix = "■",
      },

      severity_sort = true,

      -- Options for floating windows. See vim.diagnostic.open_float().
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    },

    servers = {
      lua_ls = {
        Lua = {
          diagnostics = {
            enable = false,
          },
          format = {
            enable = false,
          },
        },
      },
    },
  },
  config = function(_, opts)
    vim.diagnostic.config(opts.diagnostics)

    -- Add icons instead of letter.
    local signs = {
      Error = "✘ ",
      Warn = "▲ ",
      Hint = "⚑ ",
      Info = " ",
    }
    for type, text in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = text, texthl = hl, numhl = hl })
    end

    local map = require("lixaft.utilities.map")

    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          settings = opts.servers[server_name] or {},
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
          on_attach = function(_, buffer)
            local options = { buffer = buffer }

            -- LSP actions.
            map.normal("K", vim.lsp.buf.hover, options)
            map.normal("gD", vim.lsp.buf.declaration, options)
            map.normal("gd", vim.lsp.buf.definition, options)
            map.normal("gi", vim.lsp.buf.implementation, options)
            map.normal("go", vim.lsp.buf.type_definition, options)
            map.normal("gr", vim.lsp.buf.references, options)
            map.normal("<c-k>", vim.lsp.buf.signature_help, options)
            map.normal("<leader>ca", vim.lsp.buf.code_action, options)
            map.normal("<leader>r", vim.lsp.buf.rename, options)

            -- Diagnostics.
            map.normal("<leader>of", vim.diagnostic.open_float, options)
            map.normal("[d", vim.diagnostic.goto_prev, options)
            map.normal("]d", vim.diagnostic.goto_next, options)

            -- Formatting.
            map.normal("<leader>f", vim.lsp.buf.format)
          end,
        })
      end,
    })
  end,
}
