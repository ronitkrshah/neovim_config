return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      theme = "dragon",
      background = {
        dark = "wave"
      },
      functionStyle = {italic = true, bold = true},
    })

    vim.cmd("colorscheme kanagawa") end
}
