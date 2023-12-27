return {
  "anuvyklack/pretty-fold.nvim",
  keys = { "za", "zM", "zR" },
  config = function()
    require('pretty-fold').setup({
      keep_indentation = true,
      fill_char = '-',
      sections = {
        left = {
          "+", function () return string.rep('-', vim.v.foldlevel) end,
          ' ','number_of_folded_lines', ' 󰁂 ', 'content'
        }
      }
    })
  end
}
