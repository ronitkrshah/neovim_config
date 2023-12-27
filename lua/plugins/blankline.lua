return {
  -- Github Link
  'lukas-reineke/indent-blankline.nvim',

  -- Event VeryLazy
  event = 'VeryLazy',

  -- Setup
  config = function()
    require('ibl').setup()
  end

}
