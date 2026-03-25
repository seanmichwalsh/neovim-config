-- Define custom commands.

---------------------------------------
-- Private Helper Functions

-- Get list of all installed packages as a table.
local function get_installed_packages()
  return vim.iter(vim.pack.get())
    :map(function(pack) return pack.spec.name end)
    :totable()
end

---------------------------------------
-- User Commands

-- List currently installed packages, show which are active.
vim.api.nvim_create_user_command(
  'PackList',
  function()
    vim.pack.update(nil, { offline = true })
  end,
  {
    desc = 'List installed packages',
  }
)

-- Update the specified package(s), also updating the Pack lockfile.
-- If none are specified, update all installed packages.
vim.api.nvim_create_user_command(
  'PackUpdate',
  function(opts)
    if #opts.fargs ~= 0 then
      vim.pack.update(opts.fargs)
    else
      vim.pack.update(nil)
    end
  end,
  {
    desc = 'Update installed packages',
    nargs = '*',
    complete = get_installed_packages,
  }
)

-- Delete the specified package(s), also updating the Pack lockfile.
vim.api.nvim_create_user_command(
  'PackDelete',
  function(opts)
    -- Force override must be set to delete packages within an active session.
    vim.pack.del(opts.fargs, { force = true })
  end,
  {
    desc = 'Delete installed packages',
    nargs = '+',
    complete = get_installed_packages,
  }
)

---------------------------------------
-- Auto Commands

-- Highlight when yanking text.
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  callback = function()
    vim.hl.on_yank()
  end,
})
