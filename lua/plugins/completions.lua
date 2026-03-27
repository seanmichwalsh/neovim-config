-- blink.cmp
-- https://github.com/saghen/blink.cmp.git
--
-- Completion engine. Outperforms native Neovim completions due to its better
-- integration of multiple completion backends, symbols, and doc hints.
--
-- Depends: nil

-- Install from stable V1 branch, main branch is undergoing experimental V2
-- development. Pulling a version instead of a branch ensure we also pull
-- pre-built Rust fuzzy-search binary.
vim.pack.add({
  {
    src = 'https://github.com/saghen/blink.cmp.git',
    version = vim.version.range('1.*'),
  },
})

require('blink.cmp').setup({
  completion = {
    menu = {
      -- Don't show completions until user presses '<C-space>'.
      auto_show = false,
    },
    list = {
      selection = {
        auto_insert = false,
      },
    },
  },
  keymap = {
    preset = 'default',
    -- Toggle completion window.
    ['<C-space>'] = { 'show', 'hide' },
    -- Toggle documentation window.
    ['<C-d>'] = { 'show_documentation', 'hide_documentation' },
    -- Clobber default Blink mapping, which closes completion menu.
    ['<C-e>'] = { 'fallback' },
  },
})
