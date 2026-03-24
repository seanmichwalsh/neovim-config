-- [[ Root of the Neovim config, sets globals and loads sub-config modules ]]

-- [[ Set globals ]]

-- Set <space> as the leader key
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Enable use of external Nerd Fonts from terminal
vim.g.have_nerd_font = true

-- [[ Set editor options ]]
require 'options'

-- [[ Set keymap overrides ]]
require 'keymaps'
