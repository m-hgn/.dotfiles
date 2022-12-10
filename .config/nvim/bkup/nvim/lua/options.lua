local options = {

    -- file stuff
    backup = false,
    writebackup = false,
    swapfile = false,
    undofile = true,
    fileencoding = "utf-8",

    -- os integration
    clipboard = "unnamedplus",
    mouse = "a",

    -- navigation
    hlsearch = true,
    ignorecase = true,
    smartcase = true,

    number = false,
    numberwidth = 8,
    relativenumber = true,

    sidescroll = 32,
    scrolloff = 16,
    sidescrolloff = 10,
    wrap = false,
    
    splitbelow = true,
    splitright = true,
    timeoutlen = 1000,
    updatetime = 300,

    -- formatting
    expandtab = true,
    shiftwidth = 4,
    softtabstop = 4,
    tabstop = 4,

    smartindent = true,

    -- visual options
    cmdheight = 2,
    completeopt = { "menuone", "noselect" },
    pumheight = 20,
    showmode = false,
    showtabline = 2,
    -- termguicolors = true,
}

-- apply defined options
for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd [[set whichwrap+=<,>,[,],h,l]]
vim.cmd [[set iskeyword+=-]]
