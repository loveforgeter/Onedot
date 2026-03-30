" Most of this file copied from the vimrc of amix
" see https://github.com/amix/vimrc

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Quick quit insert mode
imap jj <Esc>

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><leader> is pressed
map <silent> <leader><leader> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Move a line of text using ALT+[jk] or Option+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
	nmap ∆ <M-j>
	nmap ˚ <M-k>
	vmap ∆ <M-j>
	vmap ˚ <M-k>
endif

" Bash like keys for the command line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" Leader command
nmap <leader>q :q<cr>
nmap <leader>x :x<cr>
nmap <leader>w :w<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Useful mappings for managing buffers
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>
map <leader>bc :Bclose<cr>

" Plugin shortcut
map <leader>nn :NERDTree<cr>
map <leader>tt :Tagbar<cr>
map <leader>p  :CtrlP<cr>
map <leader>t  :CtrlPBufTag<cr>

" Enter Insert Mode
map <ENTER> o
map <BACKSPACE> i<BACKSPACE>

" Select All
map <leader>a ggvG

" Select after indent
vmap > >gv
vmap < <gv

" Map Y act like D
nnoremap Y y$

" Map Backspace as d
vnoremap <BACKSPACE> d

" Toggle NerdTree
nnoremap <F5> :NERDTreeToggle<CR>

" Toggle Tagbar
nnoremap <F6> :Tagbar<CR>

" Syntastic Check
nnoremap <F7> :SyntasticCheck<CR>

" Format Code
nnoremap <F8> :Autoformat<CR>

" Save
nnoremap <F9> :w<CR>

" Show outside
nnoremap <F12> :!<CR>

" Functions Map
cnoremap trims call TrimTrailingSpace()
cnoremap w! call SudoSave()

function! VisualSelection(direction, extra_filter) range
	let l:saved_reg = @"
	execute "normal! vgvy"

	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")

	if a:direction == 'b'
		execute "normal ?" . l:pattern . "^M"
	elseif a:direction == 'gv'
		call CmdLine("Ack \"" . l:pattern . "\" " )
	elseif a:direction == 'replace'
		call CmdLine("%s" . '/'. l:pattern . '/')
	elseif a:direction == 'f'
		execute "normal /" . l:pattern . "^M"
	endif

	let @/ = l:pattern
	let @" = l:saved_reg
endfunction

" add other key maps
runtime plugin_maps/cscope_maps.vim
