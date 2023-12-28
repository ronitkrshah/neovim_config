return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  keys = { "<leader>ee", "<leader>ef" },
  config = function()

    -- Recommended
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

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
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
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
          hint = " ",
          info = " ",
          warning = " ",
          error = " ",
        },
      },
      select_prompts = true,
      notify = {
        threshold = vim.log.levels.ERROR,
      }
    })

    -- Custom Mappings
    local keymap = vim.api.nvim_set_keymap

    keymap("n", "<Leader>ee", ":NvimTreeToggle<CR>", { silent = true} )
    keymap("n", "<Leader>ef", ":NvimTreeFindFile<CR>", { silent = true} )

  end
}
