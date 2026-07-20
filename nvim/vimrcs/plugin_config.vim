" =============================================================================
" File:          plugin_config.vim
" Description:   Plugin configurations
" =============================================================================

" -----------------------------------------------------------------------------
" Vim-Airline - Status bar
" -----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_theme = "catppuccin_mocha"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1
let g:airline_detect_paste = 1
let g:airline_detect_spell = 1
let g:airline_detect_iminsert = 1

" -----------------------------------------------------------------------------
" FZF - File, buffer, and history search
" -----------------------------------------------------------------------------
let g:fzf_layout = { 'down': '~40%' }
let g:fzf_buffers_jump = 1
let g:fzf_history_dir = '~/.config/nvim/tmp/fzf-history'

" -----------------------------------------------------------------------------
" Vim-GitGutter - Git diff in gutter
" -----------------------------------------------------------------------------
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

" -----------------------------------------------------------------------------
" Vim-Autoformat - Code formatting
" -----------------------------------------------------------------------------
let g:formatprg_clang_format = 'clang-format'
let g:autoformat_on_save = 0

" -----------------------------------------------------------------------------
" Auto-Pairs - Auto close pairs
" -----------------------------------------------------------------------------
let g:AutoPairsParensSquare = 1
let g:AutoPairsParensCurly = 1
let g:AutoPairsMultilineClose = 1

" -----------------------------------------------------------------------------
" Theme
" -----------------------------------------------------------------------------
if exists('+termguicolors')
    set termguicolors
endif
if !empty(globpath(&runtimepath, 'colors/catppuccin_mocha.vim'))
    colorscheme catppuccin_mocha
endif
