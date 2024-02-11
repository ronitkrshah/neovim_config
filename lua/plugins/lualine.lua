return {
  "nvim-lualine/lualine.nvim",
  dependencies = {"nvim-tree/nvim-web-devicons"},
  event = "UiEnter",
  config = function()
    require("lualine").setup({})
  end
}
