-- [[ Todo Comments ]]
-- https://github.com/folke/todo-comments.nvim
--
-- Highlights instances of 'todo', 'note', etc in comments.

return {
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
}

-- vim: ts=2 sts=2 sw=2 et
