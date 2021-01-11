set exrc " Wont open project .nvimrc without this here    ____      _ __        _
source $HOME/.config/nvim/plugins.vim


let mapleader = " "

" ------Standard Bindings------
nnoremap <leader>n :nohlsearch<cr>
nnoremap <leader>e :Lexplore<cr>
nnoremap <Leader><CR> :e ~/.config/nvim/init.vim<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Better indenting
vnoremap < <gv
vnoremap > >gv

nnoremap <silent> <TAB> :bnext<CR>              " TAB in general mode will move to text buffer
nnoremap <silent> <S-TAB> :bprevious<CR>        " SHIFT-TAB will go back

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>                  " Alternate way to quit
nnoremap <silent> <C-Q> :wq!<CR>                " Use control-c instead of escape
nnoremap <silent> <C-c> <Esc>                   " <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

com! W w "ES

" Functions
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" -----Basic AutoCmd-----
augroup MAHBUBUR
    autocmd!
    autocmd BufNewFile,BufRead *.md setlocal spell
    autocmd BufRead,BufNewFile *.tex set filetype=tex
    autocmd FileType tex,latex,markdown setlocal spell spelllang=en_au
    autocmd InsertEnter * norm zz
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
