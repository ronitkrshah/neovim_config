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
  event = { "BufReadPre", "BufNewFile" },
  config = function()

    local lsp = require("lsp-zero")

    lsp.on_attach(function(client, bufnr)
      lsp.default_keymaps({buffer = bufnr})
    end)

    -- Diagnostic Icons
    lsp.set_sign_icons({
      error = '',
      warn = '',
      hint = '',
      info = ''
    })

    -- Servers
    lsp.setup_servers({ "tsserver" })

    lsp.setup()

    -- =============================================================
    -- Show Diagnostc on hover
    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
      group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
      callback = function ()
        vim.diagnostic.open_float(nil, {focus=false})
      end
    })


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
