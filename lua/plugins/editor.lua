-- mini.nvim
-- https://github.com/nvim-mini/mini.nvim.git
--
-- Meta package containing a collection of useful minimal plugins created by
-- echasnovski.
--
-- Depends: nil

vim.pack.add({'https://github.com/nvim-mini/mini.nvim.git'})

-- When inserting a character that expects a pair, auto-insert the pair.
require('mini.pairs').setup()

-- Adds keybindings to auto-surround text with desired pair characters when in
-- visual mode.
require('mini.surround').setup()
