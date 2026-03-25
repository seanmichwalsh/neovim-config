-- nvim-lspconfig
-- https://github.com/neovim/nvim-lspconfig.git
--
-- Collection of default configs for LSP servers provided by the Neovim team.
-- Integrates with Neovim's native LSP framework as of version >=0.11.

vim.pack.add({'https://github.com/neovim/nvim-lspconfig.git'})

-- Select LSPs to pull directly from the system environment. These LSPs are
-- unique in that they may be nightly or dev builds not accessible via Mason.
-- If not present on the system environment, they will silently fail to load.
local system_lsps = {
  'clangd',
  'rust_analyzer',
}
vim.lsp.enable(system_lsps)

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
