local ok, lspconfig = pcall(require, 'lspconfig')

if not ok then
    print 'lspconfig not found. Not setting up lsp...'
    return
end

lspconfig.bashls.setup{}
lspconfig.clangd.setup{}
lspconfig.gopls.setup{}
lspconfig.hls.setup{}
lspconfig.nimls.setup{}
lspconfig.pylsp.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.tsserver.setup{}
