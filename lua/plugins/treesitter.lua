return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {"hiphish/rainbow-delimiters.nvim"},
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()

    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      -- Required parsers
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
      },
      indent = {
        enable = true
      }
    })
  end
}
