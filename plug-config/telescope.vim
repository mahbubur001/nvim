lua require('telescope').setup({defaults = {file_sorter = require('telescope.sorters').get_fzy_sorter}})

nnoremap <leader>sf <cmd>lua require'telescope.builtin'.git_files{}<cr>
nnoremap <leader>p  <cmd>lua require'telescope.builtin'.find_files{}<cr>
nnoremap <leader>rg <cmd>lua require'telescope.builtin'.lsp_references{}<cr>
