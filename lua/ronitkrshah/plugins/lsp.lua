return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- lsp plugin manager
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    -- completion
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",

    -- snippets
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  },
  lazy = false,
  config = function()
    local cmp = require("cmp")
    local capabilities = vim.tbl_deep_extend("force",
      {
        workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = false,
          },
        },
      },
      vim.lsp.protocol.make_client_capabilities(),
      require('cmp_nvim_lsp').default_capabilities()
    )
    require("mason").setup()
    require("mason-lspconfig").setup({
      handlers = {
        function (server)
          require("lspconfig")[server].setup({
            capabilities = capabilities
          })
        end,

        ["lua_ls"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup {
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = {"vim"},
                }
              }
            }
          }
        end,
      }
    })

    -- completion setup
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      }, {
        { name = 'buffer' },
        })
    })

    -- show borders on hover
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = "single",
        title = " Hover "
      }
    )

    -- show diagnostics as pop up
    _G.LspDiagnosticsPopupHandler = function()
      local current_cursor = vim.api.nvim_win_get_cursor(0)
      local last_popup_cursor = vim.w.lsp_diagnostics_last_cursor or { nil, nil }

      -- Show the popup diagnostics window,
      -- but only once for the current cursor location (unless moved afterwards).
      if not (current_cursor[1] == last_popup_cursor[1] and current_cursor[2] == last_popup_cursor[2]) then
        vim.w.lsp_diagnostics_last_cursor = current_cursor
        vim.diagnostic.open_float(0, { scope = "cursor", title = " Diagnostics ", border = "single" })
      end
    end
    vim.cmd [[
    augroup LSPDiagnosticsOnHover
      autocmd!
      autocmd CursorHold *   lua _G.LspDiagnosticsPopupHandler()
    augroup END
    ]]
  end
}
