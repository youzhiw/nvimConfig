-- source previous vim configs
vim.cmd.source("~/.vimrc")

vim.opt.conceallevel = 1

-- <leader> key
vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- show line number
vim.opt.number = true

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- Map jj to ESC in insert mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', {noremap = true})

-- clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

-- open config
vim.cmd('nmap <leader>c :e ~/.config/nvim/init.lua<cr>')

-- save
vim.cmd('nmap <leader>s :w<cr>')

-- close tab
vim.cmd('nmap <leader>qq :tabclose<cr>')

-- skip folds (down, up)
vim.cmd('nmap j gj')
vim.cmd('nmap k gk')

-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search parttern contains upper case characters
vim.opt.smartcase = true

-- split right
vim.opt.splitright = true

if vim.g.vscode then
    -- VSCode extension
else
-- load plugins
require("youzhi.lazy")
-- telescope settings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
end
