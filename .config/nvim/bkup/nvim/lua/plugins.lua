
local data_dir = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

-- install packer
if vim.fn.empty(vim.fn.glob(data_dir)) > 0 then
    packer_bootstrap = vim.fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        data_dir,
    }
    print "Packer installed. Please reload Neovim."
    vim.cmd [[packadd packer.nvim]]
end

-- require packer
local ok, packer = pcall(require, "packer")
if not ok then
    print "Packer not found. Not loading Plugins."
    return
end

-- plugins
return packer.startup(function(use)

-- general
    use "wbthomason/packer.nvim"                -- packer is self managed

-- lsp
    use "hrsh7th/nvim-cmp"                      -- completion
    use "neovim/nvim-lspconfig"                 -- enable lsp
    use "williamboman/nvim-lsp-installer"       -- lsp installer

end)
