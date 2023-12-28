return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  event = 'UiEnter',
  config = function ()
    local bufferline = require('bufferline')

    bufferline.setup {
      options = {
        indicator = {
          icon = " 󰄛 "
        },
        diagnostics = "coc",
        diagnostics_update_in_insert = true,
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and " " or ""
          return " " .. icon .. count
        end,
      },
    }

    -- Keymap
    local keymap = vim.api.nvim_set_keymap

    keymap("n", "<A-.>", ":BufferLineCycleNext<CR>", {silent = true})
    keymap("n", "<A-,>", ":BufferLineCyclePrev<CR>", {silent = true})
    keymap("n", "<A-x>", ":q<CR>", {silent = true})
  end
}
