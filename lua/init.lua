local lspconfig = require "lspconfig"
lspconfig.gopls.setup {
    root_dir = lspconfig.util.root_pattern(".git")
}
