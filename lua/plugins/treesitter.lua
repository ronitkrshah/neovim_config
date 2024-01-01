return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {"hiphish/rainbow-delimiters.nvim"},
  commit = "dd4e2dbc002dfce109d621e8bdcd9d89438b0a32",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()

    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
      },
    })
  end
}
