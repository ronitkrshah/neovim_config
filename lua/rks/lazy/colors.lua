return {
  'AlexvZyl/nordic.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('nordic').setup({})

    -- Apply colorscheme
    vim.cmd.colorscheme("nordic")
  end
}
