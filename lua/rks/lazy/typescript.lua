return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  ft = {"typescript", "javascript", "typescriptreact", "javascriptreact"},
  config = function()
    require("typescript-tools").setup({
      settings = {
        tsserver_plugins = {
          "@styled/typescript-styled-plugin",
        },
      }
    })
  end
}
