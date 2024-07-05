return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = 'UiEnter',
  config = function ()
    require('bufferline').setup {
      options = {
        diagnostics = "coc",
        diagnostics_update_in_insert = true,
        diagnostics_indicator = function(count, level)
          local icon = level:match("error") and "E" or "W"
          return " " .. icon .. count
        end,
      },
    }

    vim.keymap.set("n", "<A-.>", ":BufferLineCycleNext<CR>", {silent = true})
    vim.keymap.set("n", "<A-,>", ":BufferLineCyclePrev<CR>", {silent = true})
  end
}
