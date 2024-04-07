return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "moon",
      styles = {
        functions = {bold = true, italic = true}
      }
    })

    vim.cmd.colorscheme("tokyonight")
  end
}
