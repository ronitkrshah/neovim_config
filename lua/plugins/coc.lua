return {
  'neoclide/coc.nvim',
  branch = 'release',
  event = { "BufReadPre", "BufNewFile" },
  config = function()

    -- Shorthand
    local keyset = vim.keymap.set

    -- AutoComplete
    function _G.check_back_space()
      local col = vim.fn.col('.') - 1
      return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
    end

    -- Keymap Options
    local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

    -- Tab Completion
    keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
    keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

    -- Enter to Confirm Selection
    keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

    -- CTRL + SPACE for available Suggestions
    keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

    -- K in normal mode - Show Documentation
    function _G.show_docs()
      local cw = vim.fn.expand('<cword>')
      if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
          vim.api.nvim_command('h ' .. cw)
      elseif vim.api.nvim_eval('coc#rpc#ready()') then
          vim.fn.CocActionAsync('doHover')
      else
          vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
      end
    end

    -- Show Docs
    keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})

    -- Quick Rename F2
    keyset("n", "<F2>", "<Plug>(coc-rename)", {silent = true})

    -- Diagnostics
    keyset("n", "gf", "<Plug>(coc-diagnostic-prev)", {silent = true})
    keyset("n", "gh", "<Plug>(coc-diagnostic-next)", {silent = true})

    -- Code Navigation
    keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
    keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
    keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
    keyset("n", "gr", "<Plug>(coc-references)", {silent = true})

    -- Remap <C-f> and <C-b> to scroll float windows/popups
    ---@diagnostic disable-next-line: redefined-local
    local opts = {silent = true, nowait = true, expr = true}
    keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
    keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)
    keyset("i", "<C-f>",
           'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts)
    keyset("i", "<C-b>",
           'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts)
    keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
    keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)

    -- Highlight the symbol and its references on a CursorHold event(cursor is idle)
    vim.api.nvim_create_augroup("CocGroup", {})
    vim.api.nvim_create_autocmd("CursorHold", {
        group = "CocGroup",
        command = "silent call CocActionAsync('highlight')",
        desc = "Highlight symbol under cursor on CursorHold"
    })

    -- Global Extensions
    vim.g.coc_global_extensions = {
      'coc-pairs',
      'coc-prettier',
      'coc-snippets',
      -- Friendly Snippets
      'https://github.com/rafamadriz/friendly-snippets@main',
      'coc-tsserver'
    }
  end
}
