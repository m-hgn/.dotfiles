vim.cmd [[packadd packer.nvim]]

require("packer")
.startup(function()
    -- functionality
    use("wbthomason/packer.nvim")
    use("norcalli/nvim-colorizer.lua")

    -- aesthetic
    use("vv9k/vim-github-dark")
    use("danishprakash/vim-yami")

    vim.cmd([[colorscheme yami]])
    -- vim.cmd [[highlight Normal ctermbg=NONE]]
    -- vim.cmd [[highlight LineNr ctermbg=NONE]]
    -- vim.cmd [[highlight clear SignColumn]]
    -- vim.cmd [[highlight clear Tabline]]
    -- vim.cmd [[highlight clear TablineFill]]
    -- vim.cmd [[highlight clear TablineSel]]

    -- treesitter
    use("nvim-treesitter/nvim-treesitter")
    require("nvim-treesitter.configs")
    .setup({
        ensure_installed = { "c", "lua", "rust" },
        highlight = { enable = true },
    })

    -- fzf
    use("junegunn/fzf")
    use("junegunn/fzf.vim")

    -- lsp
    use("neovim/nvim-lspconfig")
end)
