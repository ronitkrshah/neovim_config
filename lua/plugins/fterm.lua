return {
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
}

