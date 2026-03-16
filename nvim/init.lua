require 'core.options'
require 'core.keymaps'

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false
-- Setup lazy.nvim (Plugin Manager)
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then error('Error cloning lazy.nvim:\n' .. out) end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
require('lazy').setup({
   	require 'plugins.colorscheme',
    require 'plugins.snacks',
    require 'plugins.arrow',
    require 'plugins.lualine',
    require 'plugins.tmux',
    require 'plugins.treesitter',
    require 'plugins.whichkey',
})

