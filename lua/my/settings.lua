-- Aliases for Lua API funcitions
local o = vim.o
local wo = vim.wo
local bo = vim.bo
vim.cmd('set iskeyword+=-') -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set inccommand=split') -- Make substitution work in realtime
vim.cmd('set encoding=UTF-8')
TERMINAL = vim.fn.expand('$TERMINAL')
vim.cmd('let &titleold="'..TERMINAL..'"')
o.titlestring="%<%F%=%l/%L - nvim"
vim.cmd('set colorcolumn=99999') -- fix indentline for now
vim.cmd('set expandtab') -- Converts tabs to spaces

-- Enable syntax highlighting and filetype plugins
vim.cmd 'syntax enable'
vim.cmd 'filetype plugin on'
vim.cmd 'language en_US.utf-8'

-- Buffer options
bo.formatoptions = 'cro'
bo.fileencoding = 'utf-8'
bo.expandtab = true
bo.smartindent = true
bo.autoindent = true
bo.undofile = true

-- Global optionss
o.completeopt = 'menuone,noinsert,noselect'
o.errorbells = false
o.exrc = true
o.title = true
o.hidden = true
o.pumheight = 10
o.inccommand = 'split'
o.incsearch = true
o.ignorecase = true
o.keywordprg = ':help'
o.laststatus = 2
o.lazyredraw = true
o.mouse = 'a'
o.path = '.,,'
o.scrolloff = 8
o.showmode = false
o.shortmess = o.shortmess .. 'c'
o.showtabline = 2 -- Always show tabs at the top
o.showmode = false -- We don't need to dee things like -- INSERT -- anymore
o.smartcase = true
o.splitbelow = true
o.splitright = true
o.swapfile = true
o.wildmode = 'full'
o.wildignore = '*/node_modules/*,*/.git/*,DS_Store,*/venv/*,*/__pycache__/*,*.pyc'
o.wildmenu = true
o.wildoptions = 'pum'
o.updatetime = 300
o.clipboard = 'unnamedplus' -- Copy paste between vim and everythings else
o.guifont = 'Hack Nerd Font'
-- o.guifont = "FiraCode Nerd Font:h17"
o.background = 'dark' -- colorscheme global defaults
o.termguicolors = true

-- Window options
wo.foldmethod = 'manual'
wo.relativenumber = true
wo.number = true
wo.signcolumn = 'yes'
wo.wrap = true
wo.cursorline = true -- Enable highlighting of the current line
--wo.colorcolumn = 80
vim.g.nvim_tree_disable_netrw = 0 -- enable netrw for remote gx gf support (must be set before plugin's packadd)
vim.g.loaded_netrwPlugin = 1
-- Autocmds
-- vim.cmd 'autocmd! BufWritePre * let &bex = "@" . strftime("%F.%H:%M")' -- for backups
vim.cmd 'autocmd! TextYankPost * lua vim.highlight.on_yank { on_visual = false }' -- highlight yank for a brief second for visual feedback
vim.cmd 'autocmd! BufRead,BufNewFile *.conf,config,.ini setf dosini'
vim.cmd 'autocmd! TermOpen * startinsert'
