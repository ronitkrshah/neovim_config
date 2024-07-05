return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  lazy = false,
  config = function()
    require("rose-pine").setup({
      variant = "moon",
      styles = {
        transparency = true
      }
    })

    -- apply colorscheme
    vim.cmd("colorscheme rose-pine")
  end
}
