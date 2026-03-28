-- mini.nvim
-- https://github.com/nvim-mini/mini.nvim.git
--
-- Meta package containing a collection of useful minimal plugins created by
-- echasnovski.
--
-- Depends: nil

vim.pack.add({'https://github.com/nvim-mini/mini.nvim.git'})

-- mini.icons
--
-- Provides glyph icons available to other plugins like fzf-lua.
--
-- Depends: Terminal NerdFont
require('mini.icons').setup()

-- mini.pairs
--
-- When inserting a character that expects a pair, auto-insert the pair.
--
-- Depends: nil
require('mini.pairs').setup()

-- mini.surround
--
-- Adds keybindings to auto-surround text with desired pair characters when in
-- visual mode.
--
-- Depends: nil
require('mini.surround').setup()

-- mini.clue
--
-- Shows completion hints for multi-key keymaps.
--
-- Depends: nil
local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    -- Config-defined Leader triggers.
    { mode = { 'n', 'x' }, keys = '<Leader>' },

    -- 'g' key.
    { mode = { 'n', 'x' }, keys = 'g' },

    -- 'z' key.
    { mode = { 'n', 'x' }, keys = 'z' },

    -- 's' key (from mini.surround).
    { mode = { 'n', 'x' }, keys = 's' },

    -- '[' and ']' keys.
    { mode = 'n', keys = '[' },
    { mode = 'n', keys = ']' },

    -- Window management.
    { mode = 'n', keys = '<C-w>' },

    -- Marks.
    { mode = { 'n', 'x' }, keys = "'" },
    { mode = { 'n', 'x' }, keys = '`' },

    -- Registers.
    { mode = { 'n', 'x' }, keys = '"' },
    { mode = { 'i', 'c' }, keys = '<C-r>' },

    -- Insertion completions.
    { mode = { 'i', 'c' }, keys = '<C-x>' },
  },

  clues = {
    { mode = 'n', keys = '<Leader>s', desc = '+Search' },
    miniclue.gen_clues.g(),
    miniclue.gen_clues.z(),
    miniclue.gen_clues.square_brackets(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers({ show_contents = true }),
    miniclue.gen_clues.builtin_completion()
  },
  window = {
    scroll_down = '<C-n>',
    scroll_up = '<C-p>',
    config = {
      width = '50',
    },
  },
})
