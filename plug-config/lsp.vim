let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let g:completion_matching_smart_case = 1
let g:completion_trigger_on_delete = 1


:lua << EOF
  local nvim_lsp = require('lspconfig')
  local on_attach = function(_, bufnr)
    require('completion').on_attach()
  end
  local servers = {'jsonls', 'pyls_ms', 'vimls', 'clangd', 'tsserver', 'cssls', 'html', 'jdtls', 'sumneko_lua'}
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
    }
  end
EOF

command! Format execute 'lua vim.lsp.buf.formatting()'
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }

