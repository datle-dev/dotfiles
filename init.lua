vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('keymaps')
require('options')
require('autocommands')

require('lazy-bootstrap')
require('lazy').setup('plugins')

