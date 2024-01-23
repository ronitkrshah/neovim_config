return {
  -- Kanagawa Colorscheme
  {
    "rebelot/kanagawa.nvim",
    -- lazy = false,
    -- priority = 1000,
    config = function()
      require("kanagawa").setup({
        theme = "dragon",
        background = {
          dark = "wave"
        },
        functionStyle = {italic = true, bold = true},
      })

      vim.cmd("colorscheme kanagawa")
    end
  },

  -- One Monokai
  {
    "cpea2506/one_monokai.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("one_monokai").setup({
        themes = function(colors)
          return {
            Function = { bold = true, italic = true }
          }
        end
      })

      vim.cmd("colorscheme one_monokai")
    end
  },

  -- Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    -- lazy = false,
    -- priority = 1000,
    config = function()
      require('rose-pine').setup({
        variant = "moon"
      })

      vim.cmd('colorscheme rose-pine')
    end
  }
}
