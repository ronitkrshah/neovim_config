return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { 'nvim-lua/plenary.nvim',
    "nvim-telescope/telescope.nvim",
  },
  event = { "BufReadPost" },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

    vim.keymap.set("n", "<space>fb", function()
      require("telescope").extensions.file_browser.file_browser()
    end)

    require('telescope').setup()
    require("telescope").load_extension "file_browser"
  end
}
