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
    smartcase = true,

    number = true,
    numberwidth = 4,
    relativenumber = true,
    signcolumn = "yes",

    scrolloff = 8,
    sidescrolloff = 16,
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
    pumheight = 10,
    showmode = false,
    showtabline = 2,
    -- termguicolors = true,
}

-- apply defined options
for k, v in pairs(options) do
    vim.opt[k] = v
end


vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

