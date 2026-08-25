--[[
Sean's personal Neovim config. Organized in the following manner:

|-- init.lua              # Entry point
|-- lua/
|   |-- config/           # Native editor configuration
|   |   |-- init.lua
|   |-- plugins/          # Plugin declarations and configuration
|       |-- init.lua
|-- nvim-pack-lock.json   # Pack lockfile for plugins
]]

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require 'config'
require 'plugins'
