return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {"hiphish/rainbow-delimiters.nvim"},
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
