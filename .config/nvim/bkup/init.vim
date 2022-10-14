"
"           ╔═════════════════════════════════════════════════════════════╗
"           ║                                                             ║
"           ║                                                             ║
"           ║                                                             ║
"           ║                     -  NEOVIM v0.6.1  -                     ║
"           ║                                                             ║
"           ║                 init.vim - personal config                  ║
"           ║                                                             ║
"           ║                                                             ║
"           ║                                               -mark 2022    ║
"           ╚═════════════════════════════════════════════════════════════╝
"


" ╔═════════════════╗
" ║ general options ║
" ╚═════════════════╝
set encoding=utf-8                                           " all my homies hate ascii
set nocompatible                                             " disable vi compatability
set viminfo=<4000,'10,/10,:20,h,f0,n~/.viminfo
"           ║     ║   ║   ║   ║ ║  ║
"           ║     ║   ║   ║   ║ ║  ╚ viminfo file path
"           ║     ║   ║   ║   ║ ╚ 0 marks per file saved
"           ║     ║   ║   ║   ╚ disable 'hlsearch' loading viminfo
"           ║     ║   ║   ╚ 20 previous commands saved
"           ║     ║   ╚ 10 previous search patterns saved
"           ║     ╚ 10 files marks saved
"           ╚ 4000 lines saved for each register


" ╔═════════╗
" ║ plugins ║
" ╚═════════╝
call plug#begin('$XDG_CONFIG_HOME/local/share/nvim/site/plugged')

" aesthetics
Plug 'ryanoasis/vim-devicons'                                " adds icons for filetypes used in other plugins
Plug 'rafi/awesome-vim-colorschemes'                         " collection of nice colorschemes
Plug 'Soares/base16.nvim'                                    " collection of nice colorschemes
Plug 'itchyny/lightline.vim'                                 " status bar
Plug 'dracula/vim', { 'as': 'dracula' }                      " oh yeah
let g:lightline = {
\   'colorscheme': 'dracula',
\   'active': {
\       'left': [ [ 'mode', 'paste' ],
\           [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\   },
\   'component_function': {
\       'gitbranch': 'FugitiveHead',
\   },
\   'mode_map': {
\       'n':'N', 'i':'I', 'R':'R',
\       'v':'V', 'V':'VL',
\       "\<C-v>":'VB', 'c':'C',
\       's':'S', 'S':'SL',
\       "\<C-s>":'SB', 't':'T',
\   },
\   'separator': { 'left': '', 'right': '' },
\   'subseparator': { 'left': '', 'right': '' },
\}

" functionality
Plug 'sheerun/vim-polyglot'                                  " extends support for programming languages
Plug 'lilydjwg/colorizer'                                    " hex color previews
Plug 'tpope/vim-surround'                                    " surround text in tags, brackets or quotes
Plug 'Raimondi/delimitMate'                                  " finish brackets automatically in insert mode
Plug 'preservim/nerdcommenter'                               " binds for commenting lines
Plug 'preservim/nerdtree'                                    " file explorer
let g:NERDTreeWinPos="left"                                  " file explorer is vertical and left aligned
let g:NERDTreeWinSize=30                                     " file explorer is 30 cols wide
let g:NERDTreeMinimalUI=1                                    " don't show hint for help menu
"Plug 'Valloric/YouCompleteMe'                                " autocompletion for various languages

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()


" ╔══════════╗
" ║ keybinds ║
" ╚══════════╝
execute 'nnoremap <space> <nop>'|                            " unmap space
let mapleader=" "|                                           " space as leader key
set backspace=indent,eol,start"                              " backspace past beginning of insertion
execute 'nnoremap <silent><leader>q :bd!<cr>'|               " <c-q>      >> close current buffer
execute 'inoremap <c-space> <return><esc>O<esc>cc'|          " <c-space>  >> expand brackets in insert mode
execute 'nmap <leader>d "_d'|                                " <leader>d  >> delete into _ register (void)
execute 'vmap <leader>d "_d'|                                " <leader>d  >> delete into _ register (void)
execute 'nmap <leader>p "+p'|                                " <leader>p  >> paste from + register (clipboard)
execute 'vmap <leader>p "+p'|                                " <leader>p  >> paste from + register (clipboard)
execute 'nmap <leader>y "+y'|                                " <leader>d  >> yank into + register (clipboard)
execute 'vmap <leader>y "+y'|                                " <leader>d  >> yank into + register (clipboard)
execute 'nmap <leader>Y :%y+<return>'|                       " <leader>y  >> yank % to clipboard
execute 'nnoremap <silent><leader>j ddp'|                    " <leader>j  >> move line down
execute 'nnoremap <silent><leader>k ddkP'|                   " <leader>k  >> move line up
execute 'nnoremap <silent><leader>k ddkP'|                   " <leader>k  >> move line up
execute 'nnoremap <silent>// :noh<return>'|                  " <leader>/  >> clear highlights
execute 'nnoremap <silent>- za'|                             " -          >> fold/unfold
execute 'nnoremap <silent><leader>e :NERDTreeToggle<cr>'|    " <leader>e  >> toggle file explorer
execute 'nnoremap <silent><leader>r :split<cr>:te<cr>'|      " <leader>t  >> open terminal split
execute 'nnoremap <c-h> <c-w><c-h>'|                         " ╔
execute 'nnoremap <c-j> <c-w><c-j>'|                         " ║ <c-hjkl> >> move between splits
execute 'nnoremap <c-k> <c-w><c-k>'|                         " ║
execute 'nnoremap <c-l> <c-w><c-l>'|                         " ╚
execute 'nnoremap <buffer><silent><leader>w :set wrap!<cr>'| " <leader>w  >> toggle wrapping for buffer
execute 'tnoremap <esc> <c-\><c-n>'|                         " <esc>      >> enter terminal normal mode


" ╔════════════╗
" ║ formatting ║
" ╚════════════╝
set autoindent                                               " line break keeps indentation level
set expandtab                                                " expands tabs to ~shiftwidth~ spaces
set shiftwidth=4                                             " indent shifts four spaces
set softtabstop=4                                            " backspace deletes four spaces (one tab)"
set tabstop=4                                                " tabs take up four spaces


" ╔══════════════════════╗
" ║ navigation & editing ║
" ╚══════════════════════╝
set hlsearch                                                 " highlight search
nohl                                                         " clear highlights on load of init.vim
set ignorecase                                               " case insensitive search (see >> set smartcase)
set incsearch                                                " incremental search highlighting
set omnifunc=syntaxcomplete#Complete                         " <c-x> in insert mode used for completion
set scrolloff=20                                             " start scrolling at 20 lines from top or bottom
set sidescroll=1                                             " minimal number of columns to scroll
set sidescrolloff=20                                         " start scrolling at 20 columns from left or right
set signcolumn=yes:2                                         " signcolumn on and two spaces wide
set startofline                                              " linewise commands move cursor to first non-blank
set smartcase                                                " capital letter in query makes search case sensitive
set splitbelow                                               " new horizontal splits open downwards
set splitright                                               " new vertical splits open upwards
set wildignorecase                                           " wildmenu is case insensitive
set wildmenu                                                 " command mode tab completion
set wildoptions=pum                                          " display wildmenu as vertical popup


" ╔═════════╗
" ║ display ║
" ╚═════════╝
colorscheme dracula                                          " mhm oh yeah baby that's what it's about
set foldlevel=99                                             " initial foldlevel
set foldmethod=indent                                        " fold keybind uses indentation level
set laststatus=2                                             " last window always has status line
set lazyredraw                                               " only redraws screen when necessary
set noshowmode                                               " don't show mode on bottom
set nowrap                                                   " disable line wrapping (enable >> :set wrap)
set number                                                   " display line numbers
set shortmess=aTAc                                           " shorten messages
set showcmd                                                  " show commands
set showmatch                                                " highlight matching bracket
set showtabline=2                                            " always show opened tabs
set textwidth=0                                              " wrap after automatic width (if >> :set wrap)
syntax on                                                    " syntax highlighting
highlight normal guibg=null|                                 " transparent background
highlight Comment cterm=italic gui=italic|                   " highlight comments in italic
if (has("termguicolors"))
  set termguicolors
endif


" ╔═══════╗
" ║ files ║
" ╚═══════╝
autocmd BufWritePre * :%s/\s\+$//e|                          " remove trailing spaces from lines on write
filetype plugin on                                           " filetype specific sets
set nobackup                                                 " backups are deleted on write
set noswapfile                                               " no swap files
set shellslash                                               " use forward slashes for filesystem


" ╔══════════╗
" ║ commands ║
" ╚══════════╝
augroup quickcompile                                         " enables quick compiling/invoking makefiles
    autocmd!
    autocmd filetype python nnoremap <f5> :w <bar> :!python3 % <cr>
    autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++14 % <cr> :vnew <bar> :te "./a.out" <cr><cr>
    autocmd filetype cpp nnoremap <f6> :w <bar> !make <cr> :vnew <bar> :te "./output" <cr><cr>
    autocmd filetype c nnoremap <f5> :w <bar> !make %:r && ./%:r <cr>
    autocmd filetype java nnoremap <f5> :w <bar> !javac % && java %:r <cr>
augroup END

