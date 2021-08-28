require('init-plugins')
require('init-icons')
require('init-misc')
require('init-buffer')
require('init-statusline')
require('init-term')
require('init-lspconf')
require('init-treesitter')
require('init-cmp')
require('init-indent')
require('init-telescope')
require('init-tree')
require('init-git')
require('init-which-key')

local cmd = vim.cmd
local g = vim.g

-- setup themes and non config plugins
g.neon_transparent = true
cmd[[colorscheme neon]]

-- setup space as leader key
g.mapleader = ' '
-- disable auto save
g.auto_save = 0

