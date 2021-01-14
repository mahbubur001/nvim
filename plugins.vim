"Plugins
call plug#begin('~/.config/nvim/plugged')
" ----------------- LSP -------------
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" File manager
Plug 'preservim/nerdtree'

Plug 'tpope/vim-fugitive'       " GitHub
Plug 'tpope/vim-commentary'     " Commentary
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'         " File Search
Plug 'ryanoasis/vim-devicons'   " Icon
Plug 'honza/vim-snippets'       " Snippets
Plug 'mhinz/vim-startify'       " Startify


Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'jiangmiao/auto-pairs' " Auto pairs and surround for '(' '[' '{' etc.
Plug 'tpope/vim-surround'

" ----------------- THEME -------------
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()
"" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
