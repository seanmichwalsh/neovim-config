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

-- [[ Initialize lazy.nvim plugin manager ]]
require 'lazy-init'

-- [[ Install and configure plugins ]]
require 'plugins'

-- vim: ts=2 sts=2 sw=2 et
