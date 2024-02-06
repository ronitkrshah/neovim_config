return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()

    -- Configurations
    vim.g.gruvbox_material_background = 'soft'
    vim.g.gruvbox_material_better_performance = 1
    vim.g.gruvbox_material_enable_bold = 1
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_diagnostic_line_highlight = 1
    vim.g.gruvbox_material_diagnostic_virtual_text = 'colored'

    -- Apply
    vim.cmd('colorscheme gruvbox-material')
  end
}
