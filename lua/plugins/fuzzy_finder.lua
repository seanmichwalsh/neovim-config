-- fzf-lua
-- https://github.com/ibhagwan/fzf-lua.git
--
-- Fuzzy finder for all sorts of categories (files, greps, diagnostics,
-- LSP output, etc).
--
-- Depends: nil
vim.pack.add({'https://github.com/ibhagwan/fzf-lua.git'})

-- Search against all files recursively from the current directory.
vim.keymap.set('n', '<leader>sf',
  function() require('fzf-lua').files() end,
  { desc = 'Search files' }
)

-- Search open buffers.
vim.keymap.set('n', '<leader><leader>',
  function() require('fzf-lua').buffers() end,
  { desc = 'Search open buffers' }
)

-- Grep against all files recursively from the current directory.
vim.keymap.set('n', '<leader>sg',
  function() require('fzf-lua').live_grep() end,
  { desc = 'Live grep' }
)

-- Resume last search.
vim.keymap.set('n', '<leader>sr',
  function() require('fzf-lua').resume() end,
  { desc = 'Search resume' }
)
