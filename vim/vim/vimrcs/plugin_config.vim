" Lightline
let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [[ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ]],
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \ },
      \ }

" FZF
let g:fzf_layout = { 'down': '~40%' }
let g:fzf_buffers_jump = 1
let g:fzf_history_dir = '~/.vim/tmp/fzf-history'

" GitGutter
let g:gitgutter_enabled = 1
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '‾'
let g:gitgutter_sign_modified_removed = '≋'
let g:gitgutter_sign_width = 1
let g:gitgutter_sign_priority = 10
let g:gitgutter_highlight_lines = 1
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1

" Autoformat
let g:formatprg_clang_format = 'clang-format'
let g:autoformat_on_save = 0

" Auto-Pairs
let g:AutoPairsParensSquare = 1
let g:AutoPairsParensCurly = 1
let g:AutoPairsMultilineClose = 1

if exists('+termguicolors')
  set termguicolors
endif
let g:tokyonight_style = 'night'
if !empty(globpath(&runtimepath, 'colors/tokyonight.vim'))
  colorscheme tokyonight
endif
