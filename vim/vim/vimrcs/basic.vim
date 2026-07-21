syntax enable
set nocompatible

set fileencodings=utf-8,gbk,gb2312,big5
set encoding=utf-8
set fileformats=unix,dos

" UI
set number relativenumber cursorline numberwidth=4
set colorcolumn=
set laststatus=2 showcmd showmatch matchtime=2
set list
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮
set wrap linebreak
set mouse=a mousemodel=popup

" Editing
set expandtab tabstop=2 shiftwidth=2 autoindent
filetype plugin indent on
set backspace=indent,eol,start
set whichwrap+=<,>,h,l,[,]
set wildmenu wildmode=list:longest
set wildignore+=*.o,*~,*.pyc,__pycache__,node_modules,.git,.svn

" Navigation
set hlsearch incsearch ignorecase smartcase
set splitbelow splitright equalalways
set foldenable foldlevelstart=10 foldnestmax=10 foldmethod=indent
set updatetime=300 timeoutlen=500 autoread

" Persistence
set backup backupdir=$HOME/.vim/tmp/backup//
set undofile undodir=$HOME/.vim/tmp/undo//

if has('clipboard')
  set clipboard=unnamedplus
endif
