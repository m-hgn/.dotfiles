local ok, lspconfig = pcall(require, 'lspconfig')

if not ok then
    print 'lspconfig not found. Not setting up lsp...'
    return
end

lspconfig.clangd.setup{}
lspconfig.hls.setup{}
lspconfig.nimls.setup{}
lspconfig.pylsp.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.tsserver.setup{}
