return {
  'EdenEast/nightfox.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require("nightfox").setup({
      options = {
        styles = {
          comments = "italic",
          functions = "bold,italic",
        }
      }
    })

    vim.cmd.colorscheme("nordfox")
  end
}
