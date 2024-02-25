return {
  -- Blankline for better indentation view
  {
    'lukas-reineke/indent-blankline.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require('ibl').setup({
        indent = {
          char = "▏"
        }
      })
    end
  },

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

  -- Floating Terminal
  {
    'numToStr/FTerm.nvim',
    keys = { '<A-i>' },
    config = function()

      require('FTerm').setup({
        -- Double Border
        border = { "╔", "═" ,"╗", "║", "╝", "═", "╚", "║"},
      })

      -- Custom Keymap
      vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
      vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

    end
  },

  -- Replace stock Ui of vim prompt
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    config = function()
      require("dressing").setup({
        title_pos = "left",
      })
    end
  },

  -- Vim Git Integration
  {
    "lewis6991/gitsigns.nvim",
    event = {"BufReadPost"},
    config = function()
      require('gitsigns').setup()
    end
  },

  -- Surround Vim
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  }
}