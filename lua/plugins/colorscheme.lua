return {
  "Shatur/neovim-ayu",
  priority = 1000,
  lazy = false,
  config = function()
    require('ayu').setup({
      mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
      terminal = true, -- Set to `false` to let terminal manage its own colors.
      overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
    })
    vim.cmd("colorscheme ayu")
  end
}
