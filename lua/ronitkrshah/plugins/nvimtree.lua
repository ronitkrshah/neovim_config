return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  lazy = false,
  config = function()

    -- change color for arrows in tree to light blue
    vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
    vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])


    -- Configuration
    require('nvim-tree').setup({
      hijack_cursor = true,
      disable_netrw = true,
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "",
              arrow_open = "",
            },
          },
        },
      },
      git = {
        ignore = false,
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = "H",
          info = "I",
          warning = "W",
          error = "E",
        },
      },
      notify = {
        threshold = vim.log.levels.ERROR,
      },
      actions = {
        open_file = {
          quit_on_open = true
        }
      }
    })

  end
}
