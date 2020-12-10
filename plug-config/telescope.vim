lua require('telescope').setup({defaults = {file_sorter = require('telescope.sorters').get_fzy_sorter}})
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
