return {

  -- Indent Scope Highlight
  {
    "echasnovski/mini.indentscope",
    version = "*",
    keys = { "j", "k", "l", "h", "i", "G" },
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
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
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
