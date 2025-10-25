-- [[ Mini ]]
-- https://github.com/echasnovski/mini.nvim
--
-- Swiss army knife of various small independent Neovim plugins that contribute
-- to editor quality of life.

return {
  {
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- Mini.Files - Netrw file explorer replacement
      local mini_files = require 'mini.files'
      mini_files.setup {
        mappings = {
          close = '<ESC>',
        },
        -- Show reasonably sized file previews
        windows = {
          preview = true,
          width_preview = 80,
        },
      }
      -- File explorer keybinds - open either root or current directory
      vim.keymap.set('n', '<leader>er', mini_files.open, { desc = '[E]xplore [R]oot directory' })
      vim.keymap.set('n', '<leader>ef', function()
        mini_files.open(vim.api.nvim_buf_get_name(0))
      end, { desc = '[E]xplore [F]ile directory' })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
