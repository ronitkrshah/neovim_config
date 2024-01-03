return {

  -- Indent Scope Highlight
  {
    "echasnovski/mini.indentscope",
    version = "*",
    keys = { "j", "k", "l", "h", "i", "G" },
    config = function ()
      require('mini.indentscope').setup({
        symbol = "▏"
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
  },

  -- Buff Delete for bufferline.nvim
  {
    "famiu/bufdelete.nvim",
    keys = { "<A-x>" },
    cmd = {"Bdelete", "Bwipeout"},
    config = function()
      local keymap = vim.api.nvim_set_keymap

      keymap("n", "<A-x>", ":Bdelete<CR>", {silent = true})
    end
  },

  -- Git Signs
  {
    "lewis6991/gitsigns.nvim",
    event = {"BufReadPost"},
    config = function()
      require('gitsigns').setup()
    end
  }
}
