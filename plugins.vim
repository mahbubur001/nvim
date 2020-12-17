"Plugins
call plug#begin()
" ----------------- LSP -------------
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter'


Plug 'tpope/vim-fugitive'       " GitHub
Plug 'tpope/vim-commentary'     " Commentary
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'         " File Search
Plug 'ryanoasis/vim-devicons'   " Icon
Plug 'honza/vim-snippets'       " Snippets
Plug 'mhinz/vim-startify'       " Startify

" ----------------- THEME -------------
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()
"" Automatically install missing plugins on startup
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
