-- [[ Install and configure plugins ]]

-- Use lazy.nvim plugin manager, which must be initialized first.
require('lazy').setup({
  require 'plugins.guess-indent',
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lspconfig',
  require 'plugins.conform',
  require 'plugins.blink-cmp',
  require 'plugins.todo-comments',
  require 'plugins.tokyo-night',
  require 'plugins.mini',
  require 'plugins.treesitter',
  require 'plugins.lint',
  require 'plugins.indent-line',
  require 'plugins.autopairs',
}, {
  ui = {
    -- If a Nerd Font is installed, setting icons to an empty table will cause the
    -- default lazy.nvim Nerd Font icons to be used. Otherwise, define a unicode
    -- icons table.
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
