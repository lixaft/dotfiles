-- Quickstart configs for Nvim LSP.

return {
  "neovim/nvim-lspconfig",
  event = { "BufNewFile", "BufReadPost" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "williamboman/mason.nvim",
  },

  config = function()
    local map = require("lixaft.core.keymap").set

    require("lspconfig.ui.windows").default_options.border = "rounded"
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = "rounded"
      return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end

    vim.diagnostic.config({
      severity_sort = true,

      float = {
        border = "rounded",
        source = "always",
      },
    })

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

    local function build_capabilities(opts)
      return vim.tbl_extend(
        "force",
        require("cmp_nvim_lsp").default_capabilities(),
        opts or {}
      )
    end

    local function on_attach(_, buffer)
      local opts = { buffer = buffer }
      map("n", "gl", vim.diagnostic.open_float, opts)
      map("n", "gr", vim.lsp.buf.rename, opts)

      map("i", "<c-h>", vim.lsp.buf.signature_help, opts)

      map("n", "gF", function()
        vim.lsp.buf.format({ async = true })
      end, opts)
    end

    local no_diagnostics_handlers = {
      ["textDocument/publishDiagnostics"] = function(...)
        local result = select(2, ...)
        result.diagnostics = {}
      end,
    }

    -- Python.
    require("lspconfig").pyright.setup({
      capabilities = build_capabilities(),
      on_attach = on_attach,
      handlers = no_diagnostics_handlers,
    })
    require("lspconfig").ruff_lsp.setup({
      capabilities = build_capabilities({
        hoverProvider = false,
      }),
      on_attach = on_attach,
    })

    -- Lua.
    require("lspconfig").lua_ls.setup({
      capabilities = build_capabilities(),
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = { enable = false },
          format = { enable = false },
        },
      },
    })

    -- C/C++.
    require("lspconfig").clangd.setup({
      capabilities = build_capabilities({
        offsetEncoding = { "utf-16" },
      }),
      on_attach = on_attach,
    })

    -- CMake.
    require("lspconfig").cmake.setup({
      capabilities = build_capabilities(),
      on_attach = on_attach,
    })

    -- Rust.
    require("lspconfig").rust_analyzer.setup({
      capabilities = build_capabilities(),
      on_attach = on_attach,
    })

    -- Go.
    require("lspconfig").gopls.setup({
      capabilities = build_capabilities(),
      on_attach = on_attach,
    })

    -- Bash.
    require("lspconfig").bashls.setup({
      capabilities = build_capabilities(),
      on_attach = on_attach,
    })
  end,
}
