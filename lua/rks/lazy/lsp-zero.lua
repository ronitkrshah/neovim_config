return {
  "VonHeikemen/lsp-zero.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "L3MON4D3/LuaSnip",

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
  end
}
