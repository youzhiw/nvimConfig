-- source previous vim configs
vim.cmd.source("~/.vimrc")

-- set tab space
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- <leader> key
vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- show line number
vim.opt.number = true

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- redo
vim.keymap.set('n', 'U', '<C-r>')

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

-- fold option
vim.opt.foldmethod = 'indent'
vim.opt.foldlevelstart = 99

if vim.g.vscode then
    -- VSCode extension
else
-- load plugins
		require("youzhi.lazy")

-- Obsidian settings
		vim.cmd('noremap <leader>oo :ObsidianOpen<cr>')
		vim.opt.conceallevel = 1
end
