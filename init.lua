-- Map leader to space
vim.g.mapleader = ' '

CONFIG_PATH = vim.fn.stdpath('config')

require('my.settings') -- my vim settings
require('my.maps') -- my key mappings
require('utils') -- utility modules for various things
require('my.plugins') -- my plugin loader (uses packer.nvim)
require('my.plugs') -- my plugin-specific settings


-- TODO is there a way to do this without vimscript
-- vim.cmd('source ~/.config/nvim/vim/script.vim')
