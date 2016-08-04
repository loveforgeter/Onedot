syntax enable

" show line number
set number

" use cindent
set cindent

" tabsize 2 spaces
set tabstop=2

" indent 2 spaces
set shiftwidth=2 " indent 2 spaces

set autoindent

" always show statusline
set laststatus=2

" reload files when changed outside
set autoread

" highlighted search result
set hlsearch

" act search like modern browsers
set incsearch

" ignore case when searching
set ignorecase

" show matched brackets
set showmatch

" open whildmenu
set wildmenu

" show tabs and tail
set list
set listchars=tab:>-,trail:~

" show command at last line
set showcmd

" enable mouse
set mouse=a

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" arrow key go to prev/next line
set whichwrap+=<,>,h,l,[,]

" themes
" colorscheme molokai
colorscheme onedark
let g:rehash256=1
