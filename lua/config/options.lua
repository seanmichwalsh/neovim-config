-- Set Vim editor configurations.

-- Enable line numbers.
vim.o.number = true

-- Enable mouse mode.
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line.
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
-- Schedule the setting after `UiEnter` because it can increase startup-time.
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indentation.
vim.o.breakindent = true

-- Save undo history.
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters is in the
-- search term.
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default.
vim.o.signcolumn = 'yes'

-- Decrease update time.
vim.o.updatetime = 250

-- Decrease mapped sequence wait time.
vim.o.timeoutlen = 300

-- Configure how new splits should be opened.
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how Neovim will display certain whitespace characters in the editor.
-- Listchars is set using `vim.opt` instead of `vim.o`.
--
-- It is very similar to `vim.o` but offers an interface for conveniently
-- interacting with tables.
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live.
vim.o.inccommand = 'split'

-- Show which line the cursor is on.
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- If performing an operation that would fail due to unsaved changes in the
-- buffer (like `:q`), instead raise a confirmation dialog.
vim.o.confirm = true

-- Avoid folding anything on buffer open by setting default foldlevel to an
-- unrealistically high value.
vim.o.foldlevel = 99
