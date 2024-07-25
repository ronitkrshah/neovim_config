return {
  'akinsho/flutter-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  ft = { "dart" },
  config = function()
    require("flutter-tools").setup({
      dev_log = {
        enabled = true,
        notify_errors = false,       -- if there is an error whilst running then notify the user
        open_cmd = "botright split", -- command to use to open the log buffer
      },
    })
  end
}
