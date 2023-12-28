return {

  -- Indent Scope Highlight
  {
    "echasnovski/mini.indentscope",
    version = "*",
    keys = { "j" },
    config = function ()
      require('mini.indentscope').setup({
        symbol = "▎"
      })
    end
  },

  -- Markdown Preview
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end
  },

  -- Dressing Nvim
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {}
  }
}
