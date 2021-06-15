:lua << EOF
local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        mappings = {
            n = {
                ['<c-x>'] = false,
                ['<c-s>'] = actions.select_horizontal,
                ['<c-q>'] = actions.send_to_qflist + actions.open_qflist,
                ['<c-c>'] = actions.close,
            },
            i = {
                ['<c-x>'] = false,
                ['<c-s>'] = actions.select_horizontal,
                ['<c-q>'] = actions.send_to_qflist + actions.open_qflist,
                ['<c-c>'] = actions.close,
            },
        },
        prompt_position = 'bottom',
        prompt_prefix = '🔍 ',
        sorting_strategy = 'ascending',
        layout_strategy = 'bottom_pane',
        file_ignore_patterns = { 'node_modules/.*', '.git/.*', '_site/.*' },
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        color_devicons = true,
        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
        layout_defaults = {
            horizontal = {
                mirror = true,
            },
            vertical = {
                mirror = true,
            },
        },
    },
    extensions = {
        fzf = {
            override_generic_sorter = false,
            override_file_sorter = true,
            case_mode = 'smart_case',
        }
    }
}
require('telescope').load_extension('fzf')
EOF
" require('telescope').load_extension('fzf_native')

" EOF

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>gf :lua require('telescope.builtin').git_files()<CR>
nnoremap <C-p> :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>fht :lua require('telescope.builtin').help_tags()<CR>
