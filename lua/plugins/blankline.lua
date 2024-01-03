return {
  -- Github Link
  'lukas-reineke/indent-blankline.nvim',
  event = { "BufReadPre", "BufNewFile" },

  -- Setup
  config = function()
    require('ibl').setup({
      indent = {
        char = "▏"
      }
    })
  end

}
