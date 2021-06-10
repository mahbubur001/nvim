" Settings from =>  https://ricostacruz.com/til/project-switcher-using-startify
" Maping
nnoremap <silent> <leader>, :Startify<cr>
nnoremap <leader>sl :SLoad<CR>
nnoremap <leader>ss :SSave<CR>
nnoremap <leader>sd :SDelete<CR>
nnoremap <leader>sc :SClose<CR>


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:webdevicons_enable_startify = 1
let g:startify_enable_special = 0

" Update session automatically as you exit vim
let g:startify_session_persistence    = 1

" 'Most Recent Files' number
let g:startify_files_number           = 5

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_custom_header = [
           \'    ,e  => File Explorar',
           \'    -   => Current File at Explorar at floating',
           \ ]



let g:startify_lists = [
            \ { 'type': 'sessions',  'header': ['   Sessions']                     },
            \ { 'type': 'files',       'header': ['  Files'] },
            \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
            \ ]




function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_bookmarks = [
              \ { 'i': '~/.config/nvim/init.vim' },
              \ { 'p': '~/.config/nvim/plugins.vim' },
              \ { 'n': '~/.config/nvim' },
              \ { 'z': '~/.zshrc' },
              \ ]


