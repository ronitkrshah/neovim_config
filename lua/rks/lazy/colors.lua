-- return {
--   'sainnhe/gruvbox-material',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- Optionally configure and load the colorscheme
--     -- directly inside the plugin declaration.
--     vim.g.gruvbox_material_enable_italic = false
--     vim.g.gruvbox_material_better_performance = 1
--     vim.g.gruvbox_material_enable_bold = 1
--     vim.g.gruvbox_material_diagnostic_text_highlight = 1
--
--   end
-- }

-- return {
--   'folke/tokyonight.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("tokyonight").setup()
--     vim.cmd.colorscheme('tokyonight')
--   end
-- }

return {
  'catppuccin/nvim',
  lazy = false,
  priority = 1000,
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      flavor = "macchiato",
      background = {
        dark = "macchiato"
      },
      styles = {
        functions = { "bold", "italic" },
        comments = { "bold", "italic" },
      }
    })
    vim.cmd.colorscheme('catppuccin')
  end
}
