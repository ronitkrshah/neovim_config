return {
  "VonHeikemen/lsp-zero.nvim",
  dependencies = {
    -- LSP Support
    "neovim/nvim-lspconfig",

    -- Autocompletion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "saadparwaiz1/cmp_luasnip",

    -- Snippets
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets"
  },
  lazy = false,
  config = function()

    local lsp = require("lsp-zero")

    lsp.on_attach(function(client, bufnr)
      lsp.default_keymaps({buffer = bufnr})
    end)

    -- Diagnostic Icons
    lsp.set_sign_icons({
      error = 'E',
      warn = 'W',
      hint = 'H',
      info = 'I'
    })

    -- Servers
    require('mason').setup()
    require('mason-lspconfig').setup({
      handlers = {
        lsp.default_setup
       },
    })
    lsp.setup()

    -- =============================================================
    _G.LspDiagnosticsPopupHandler = function()
    local current_cursor = vim.api.nvim_win_get_cursor(0)
    local last_popup_cursor = vim.w.lsp_diagnostics_last_cursor or {nil, nil}

    -- Show the popup diagnostics window,
    -- but only once for the current cursor location (unless moved afterwards).
      if not (current_cursor[1] == last_popup_cursor[1] and current_cursor[2] == last_popup_cursor[2]) then
        vim.w.lsp_diagnostics_last_cursor = current_cursor
        vim.diagnostic.open_float(0, {scope="cursor"})
      end
    end
    vim.cmd [[
    augroup LSPDiagnosticsOnHover
      autocmd!
      autocmd CursorHold *   lua _G.LspDiagnosticsPopupHandler()
    augroup END
    ]]
    -- =============================================================
    local cmp = require('cmp')
    local cmp_action = require('lsp-zero').cmp_action()
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'buffer'},
        { name = 'luasnip'},
      },
      mapping = {
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-j>"] = cmp_action.luasnip_jump_forward(),
        ["<C-k>"] = cmp_action.luasnip_jump_backward(),
      }
    })
  end
}
