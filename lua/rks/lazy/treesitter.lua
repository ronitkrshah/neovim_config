return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {"hiphish/rainbow-delimiters.nvim", "windwp/nvim-ts-autotag"},
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()

    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      -- Required parsers
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "javascript",
        "typescript",
        "tsx"
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
      },
      autotag = {
        enable = true,
      }
    })
  end
}
