return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      terminal_colors = true,
      styles = {
        -- BG Styles : dark | transparent | normal
        sidebars = "dark",
        floats = "dark"
      }
    })

    vim.cmd.colorscheme("tokyonight")
  end
}
