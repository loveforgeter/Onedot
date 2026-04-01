" =============================================================================
" File:          basic.vim
" Description:   Basic Vim configuration
" =============================================================================

" -----------------------------------------------------------------------------
" Core Settings
" -----------------------------------------------------------------------------
syntax enable
set nocompatible              " Disable vi compatibility mode

" -----------------------------------------------------------------------------
" Encoding
" -----------------------------------------------------------------------------
set fileencodings=utf-8,gbk,gb2312,big5
set encoding=utf-8
set fileformats=unix,dos

" -----------------------------------------------------------------------------
" Display
" -----------------------------------------------------------------------------
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set cursorline                " Highlight current line
set numberwidth=4             " Minimum number column width
set colorcolumn=80            " Show color column at 80 chars
set laststatus=2              " Always show statusline
set showcmd                   " Show command in statusline
set showmatch                 " Highlight matching brackets
set matchtime=2               " Match highlight time (tenths of a second)

" -----------------------------------------------------------------------------
" Colors
" -----------------------------------------------------------------------------
if has('termguicolors')
    set termguicolors         " Enable true color support
endif
colorscheme onedark
let g:rehash256=1

" -----------------------------------------------------------------------------
" Tabs & Indentation
" -----------------------------------------------------------------------------
set expandtab                 " Use spaces instead of tabs
set tabstop=2                 " Tab width
set shiftwidth=2              " Indent width
set autoindent                " Copy indent from current line
set cindent                   " Use C-style indentation
set smartindent               " Smart autoindenting

" -----------------------------------------------------------------------------
" Search
" -----------------------------------------------------------------------------
set hlsearch                  " Highlight search results
set incsearch                 " Incremental search
set ignorecase                " Ignore case in search
set smartcase                 " Smart case (uppercase = case sensitive)

" -----------------------------------------------------------------------------
" Text Objects
" -----------------------------------------------------------------------------
set list                      " Show invisible characters
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮
set wrap                      " Wrap lines
set linebreak                 " Break at word boundaries when wrapping

" -----------------------------------------------------------------------------
" Mouse
" -----------------------------------------------------------------------------
set mouse=a                   " Enable mouse support
set mousemodel=popup          " Right-click popup menu

" -----------------------------------------------------------------------------
" Backspace
" -----------------------------------------------------------------------------
set backspace=indent,eol,start  " Allow backspace over everything

" -----------------------------------------------------------------------------
" Whichwrap (arrow keys cross line boundaries)
" -----------------------------------------------------------------------------
set whichwrap+=<,>,h,l,[,]

" -----------------------------------------------------------------------------
" Wildmenu (command-line completion)
" -----------------------------------------------------------------------------
set wildmenu                  " Enable enhanced command-line completion
set wildmode=list:longest     " Complete as much as possible, then list
set wildignore+=*.o,*~,*.pyc,__pycache__,node_modules,.git,.svn

" -----------------------------------------------------------------------------
" Split Windows
" -----------------------------------------------------------------------------
set splitbelow                " New splits below current
set splitright                " New splits to the right
set equalalways               " Equal window sizes

" -----------------------------------------------------------------------------
" Backup & Undo
" -----------------------------------------------------------------------------
set backup                    " Keep backup file
set backupdir=~/.vim/tmp//    " Backup directory
set undofile                  " Persistent undo
set undodir=~/.vim/tmp/undo//

" -----------------------------------------------------------------------------
" Folding
" -----------------------------------------------------------------------------
set foldenable                " Enable folding
set foldlevelstart=10         " Start with folds open
set foldnestmax=10            " Maximum fold depth
set foldmethod=indent         " Fold by indentation

" -----------------------------------------------------------------------------
" Timing
" -----------------------------------------------------------------------------
set updatetime=300            " Faster completion (default 4000ms)
set timeoutlen=500            " Faster timeout on mappings

" -----------------------------------------------------------------------------
" Clipboard (use system clipboard)
" -----------------------------------------------------------------------------
if has('clipboard')
    set clipboard=unnamedplus
endif

" -----------------------------------------------------------------------------
" Autoread (reload files changed outside)
" -----------------------------------------------------------------------------
set autoread
