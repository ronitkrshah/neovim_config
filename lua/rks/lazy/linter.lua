return {
  "stevearc/conform.nvim",
  event = { "InsertEnter" },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        typescript = {"prettierd"},
        javascript = {"prettierd"},
        typescriptreacrt = {"prettierd"},
        typescriptreact = {"prettierd"},
      },
      format_on_save = {
        timeout_ms = 2000,
        lsp_fallback = true,
      }
    })

    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function(args)
        require("conform").format({ bufnr = args.buf })
      end,
    })
  end
}
