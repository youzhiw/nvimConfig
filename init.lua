require("youzhi.vim-options")
if vim.g.vscode then
    -- VSCode extension
else
-- load plugins
		require("youzhi.lazy")

-- Obsidian settings
		vim.cmd('noremap <leader>oo :ObsidianOpen<cr>')
		vim.opt.conceallevel = 1
end
