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

    -- Show Diagnostc on hover
    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
      group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
      callback = function ()
        vim.diagnostic.open_float(nil, {focus=false})
      end
    })

    -- Servers
    lsp.setup_servers({ "tsserver" })
  end
}
