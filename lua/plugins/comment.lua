return {
  "numToStr/Comment.nvim",
  keys = { "<C-k>" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    local comment = require("Comment")

    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- enable comment
    comment.setup({
      -- for commenting tsx and jsx files
      pre_hook = ts_context_commentstring.create_pre_hook(),
    })

    -- Set Custom Keymap For Faster Commenting
    local keymap = vim.api.nvim_set_keymap
    local opts = { silent = true }

    -- CTRL + k to comment
    keymap("n", "<C-k>", "gcc", opts)
    keymap("i", "<C-k>", "<ESC>gcci", opts)
    keymap("v", "<C-k>", "gc", opts)

  end,
}
