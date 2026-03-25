-- nvim-lspconfig
-- https://github.com/neovim/nvim-lspconfig.git
--
-- Collection of default configs for LSP servers provided by the Neovim team.
-- Integrates with Neovim's native LSP framework as of version >=0.11.
---
--- Depends: nil

vim.pack.add({'https://github.com/neovim/nvim-lspconfig.git'})

-- Select LSPs to pull directly from the system environment. These LSPs are
-- unique in that they may be nightly or dev builds not accessible via Mason.
-- If not present on the system environment, they will silently fail to load.
local system_lsps = {
  'clangd',
  'rust_analyzer',
}
vim.lsp.enable(system_lsps)

-- mason.nvim
-- https://github.com/mason-org/mason.nvim.git
--
-- TUI-based package manager for acquiring LSPs and formatters, regardless of
-- the system environment. Provides useful LSP user commands as well.
--
-- Depends: nil

vim.pack.add({"https://github.com/mason-org/mason.nvim.git"})
require('mason').setup()

-- mason-lspconfig.nvim
-- https://github.com/mason-org/mason-lspconfig.nvim.git
--
-- Glue that dynamically pipes LSPs installed via Mason into Neovim's native
-- LSP setup APIs.
--
-- Depends: { nvim-lspconfig, mason.nvim }

vim.pack.add({"https://github.com/mason-org/mason-lspconfig.nvim.git"})
require('mason-lspconfig').setup()

-- Keymaps for Neovim native LSP commands.
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
