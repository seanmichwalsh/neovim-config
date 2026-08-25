require('mini.files').setup({
  mappings = {
    close = '<Esc>',
  },
  windows = {
    max_number = 3,
    width_focus = 25,
    width_nofocus = 25,
    -- Enable for preview of hovered file.
    -- preview = true,
    -- width_preview = 50
  }
})

-- Open file explorer in root of working directory.
vim.keymap.set('n', '<leader>fd',
  function()
    MiniFiles.open(nil, false)
  end,
  { desc = 'Open file explorer (current dir)' }
)

-- Open file explorer in directory containing current file buffer.
vim.keymap.set('n', '<leader>ff',
  function()
    MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
  end,
  { desc = 'Open file explorer (file dir)' }
)

-- Resume file explorer in last used state.
vim.keymap.set('n', '<leader>fr',
  function()
    MiniFiles.open()
  end,
  { desc = 'Open file explorer (last state)' }
)
