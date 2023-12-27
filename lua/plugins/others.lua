return {

  -- Indent Scope Highlight
  {
    "echasnovski/mini.indentscope",
    version = "*",
    keys = { "j" },
    config = function ()
      require('mini.indentscope').setup({
        draw = {
          priority = 5
        },
        symbol = "▎"
      })
    end
  }
}
