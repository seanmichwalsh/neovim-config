-- nvim-treesitter
-- https://github.com/nvim-treesitter/nvim-treesitter
--
-- Package manager for treesitter parsers, plus logic to bootstap these
-- parsers using Neovim's native treesitter support.
--
-- NOTE: Plugin has dependency on third-party `tree-sitter-cli` host package,
-- must be installed manually.

-- If treesitter package is modified in any way, automatically update all
-- parsers.
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == 'nvim-treesitter' and kind == 'update' then
      -- Treesitter should already be active, but if it's not for some reason
      -- install it now (triggering parser installation with it).
      if not ev.data.active then
        vim.cmd.packadd('nvim-treesitter')
      else
        vim.cmd('TSUpdate')
      end
    end
  end
})

-- Do NOT install tree-sitter from 'master' branch, plugin was fully rewritten
-- and is now released on 'main'.
vim.pack.add({
  {
    src = 'https://github.com/nvim-treesitter/nvim-treesitter',
    version = 'main',
  },
})

-- Treesitter 'setup()' function doesn't need to be called when using default
-- values, only setup is installing language parsers.
require('nvim-treesitter').install({
  'asm',
  'bash',
  'c',
  'cmake',
  'cpp',
  'css',
  'csv',
  'cuda',
  'dockerfile',
  'git_config',
  'git_rebase',
  'gitattributes',
  'gitcommit',
  'gitignore',
  'html',
  'java',
  'javascript',
  'jq',
  'json',
  'just',
  'linkerscript',
  'llvm',
  'lua',
  'luadoc',
  'meson',
  'ninja',
  'nix',
  'objdump',
  'proto',
  'python',
  'r',
  'regex',
  'rst',
  'rust',
  'ssh_config',
  'starlark',
  'systemverilog',
  'tablegen',
  'tmux',
  'toml',
  'typescript',
  'vim',
  'vimdoc',
  'yaml',
  'zsh',
})

-- Load relevant treesitter parser when file type is set for a buffer.
vim.api.nvim_create_autocmd('FileType', {
  desc = 'Attach treesitter parser',
  callback = function(args)
    local filetype = args.match
    local lang = vim.treesitter.language.get_lang(filetype)
    if vim.treesitter.language.add(lang) then
      -- Use treesitter for folds and indents too.
      vim.bo.indentexpr = 'v:lua.vim.treesitter.indentexpr()'
      vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.wo.foldmethod = 'expr'
      vim.treesitter.start()
    end
  end
})
