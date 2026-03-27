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

-- Files / Search Keymaps

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

-- LSP Keymaps

-- Goto symbol definition.
vim.keymap.set('n', 'gd',
  function() require('fzf-lua').lsp_definitions() end,
  { desc = 'Goto definition' }
)

-- Goto symbol declaration.
vim.keymap.set('n', 'gD',
  function() require('fzf-lua').lsp_declarations() end,
  { desc = 'Goto declaration' }
)

-- Goto symbol references.
vim.keymap.set('n', 'gr',
  function() require('fzf-lua').lsp_references() end,
  { desc = 'Goto references' }
)
