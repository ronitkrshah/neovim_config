-- Default Tokyonight
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()

    -- Setup Configurations
    require('tokyonight').setup({
      -- moon | storm | day | night
      style = "moon",
      styles = {
        functions = { italic = true, bold = true },
        keywords = { italic = false }
      }
    })

    -- Apply Colorscheme
    vim.cmd('colorscheme tokyonight')
  end
}
