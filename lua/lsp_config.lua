local on_attach_vim = function(client)
    require'completion'.on_attach(client)
end

require'vim_lsp'.tsserver.setup{on_attach_vim}
