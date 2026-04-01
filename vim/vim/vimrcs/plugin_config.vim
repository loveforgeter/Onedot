" =============================================================================
" File:          plugin_config.vim
" Description:   Plugin configurations
" =============================================================================

" -----------------------------------------------------------------------------
" Syntastic - Syntax checking
" -----------------------------------------------------------------------------
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0           " Don't check on open (faster)
let g:syntastic_check_on_wq = 0             " Don't check on write quit
let g:syntastic_mode_map = {'mode': 'passive'}

" -----------------------------------------------------------------------------
" Vim-Airline - Status bar
" -----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_theme = "onedark"
let g:airline#extensions#tabline#enabled = 1        " Show buffer tabs
let g:airline#extensions#tabline#fnamemod = ':t'    " Show only filename
let g:airline#extensions#branch#enabled = 1         " Show git branch
let g:airline#extensions#syntastic#enabled = 1      " Show syntastic status
let g:airline#extensions#fugitiveline#enabled = 1   " Show fugitive line
let g:airline_detect_paste = 1                      " Detect paste mode
let g:airline_detect_spell = 1                      " Detect spell checking
let g:airline_detect_iminsert = 1                   " Detect IME mode

" -----------------------------------------------------------------------------
" Vim-Go - Go language support
" -----------------------------------------------------------------------------
let g:go_fmt_command = "goimports"                  " Use goimports for formatting
let g:go_fmt_autosave = 1                           " Auto format on save
let g:go_highlight_functions = 1                    " Highlight functions
let g:go_highlight_methods = 1                      " Highlight methods
let g:go_highlight_structs = 1                      " Highlight structs
let g:go_highlight_interfaces = 1                   " Highlight interfaces
let g:go_highlight_operators = 1                    " Highlight operators
let g:go_highlight_build_constraints = 1            " Highlight build constraints
let g:go_highlight_standard_library = 1             " Highlight stdlib calls
let g:go_highlight_types = 1                        " Highlight types
let g:go_highlight_fields = 1                       " Highlight fields
let g:go_metalinter_autosave = 0                    " Disable autosave metalinter (faster)
let g:go_doc_keywordprg_enabled = 1                 " Enable K keyword for docs

" -----------------------------------------------------------------------------
" Tagbar - Tags browser
" -----------------------------------------------------------------------------
let g:tagbar_autofocus = 1                          " Auto focus on open
let g:tagbar_compact = 1                            " Compact view
let g:tagbar_sort = 1                               " Sort tags
let g:tagbar_show_linenumbers = 1                   " Show line numbers

" Go tags configuration
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" -----------------------------------------------------------------------------
" NERDTree - File explorer
" -----------------------------------------------------------------------------
let g:NERDTreeWinSize = 30                        " Window width
let g:NERDTreeShowLineNumbers = 1                 " Show line numbers
let g:NERDTreeShowHidden = 1                      " Show hidden files
let g:NERDTreeIgnore = ['\.pyc$', '\~$', '^\.git$']  " Ignore patterns
let g:NERDTreeChDirMode = 2                       " Change dir when open tree
let g:NERDTreeMouseMode = 2                       " Double click to open
let g:NERDTreeQuitOnOpen = 0                      " Don't quit on file open

" -----------------------------------------------------------------------------
" CtrlP - Fuzzy finder
" -----------------------------------------------------------------------------
let g:ctrlp_max_depth = 200                       " Max directory depth
let g:ctrlp_max_files = 0                         " No file limit
let g:ctrlp_follow_symlinks = 1                   " Follow symlinks
let g:ctrlp_clear_cache_on_exit = 0               " Keep cache on exit
let g:ctrlp_cache_dir = $HOME . '/.vim/tmp/ctrlp' " Cache directory
let g:ctrlp_working_path_mode = 'ra'              " Smart working directory
let g:ctrlp_use_caching = 1                       " Enable caching
let g:ctrlp_match_window = 'bottom,order:btt'     " Match window position

" Ignore patterns
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|idea|vscode|node_modules|dist|build)$',
    \ 'file': '\v\.(exe|so|dll|png|jpg|jpeg|gif|pdf|zip|rar|7z|pyc|swp)$',
    \ 'link': 'some_bad_symbolic_links',
\ }

" -----------------------------------------------------------------------------
" Vim-GitGutter - Git diff in gutter
" -----------------------------------------------------------------------------
let g:gitgutter_enabled = 1                       " Enable by default
let g:gitgutter_sign_added = '+'                  " Added sign
let g:gitgutter_sign_modified = '~'               " Modified sign
let g:gitgutter_sign_removed = '-'                " Removed sign
let g:gitgutter_sign_removed_first_line = '‾'     " Removed first line
let g:gitgutter_sign_modified_removed = '≋'       " Modified removed sign
let g:gitgutter_sign_width = 1                    " Sign width
let g:gitgutter_sign_priority = 10                " Sign priority
let g:gitgutter_highlight_lines = 1               " Highlight lines
let g:gitgutter_realtime = 1                      " Realtime updates
let g:gitgutter_eager = 1                         " Eager loading

" -----------------------------------------------------------------------------
" Vim-Surround - Surround operations
" -----------------------------------------------------------------------------
" No configuration needed, works out of the box
" Usage: ys$) - surround with (), cs)] - change () to [], ds" - delete ""

" -----------------------------------------------------------------------------
" Auto-Pairs - Auto close pairs
" -----------------------------------------------------------------------------
let g:AutoPairsParensSquare = 1                   " Enable square brackets
let g:AutoPairsParensCurly = 1                    " Enable curly braces
let g:AutoPairsMultilineClose = 1                 " Multiline close

" -----------------------------------------------------------------------------
" Vim-Indent-Guides - Show indent levels
" -----------------------------------------------------------------------------
let g:indent_guides_auto_colors = 1               " Auto colors
let g:indent_guides_guide_size = 1                " Guide size
let g:indent_guides_start_level = 2               " Start from level 2
let g:indent_guides_color_change_pattern = 0      " No color change pattern

" -----------------------------------------------------------------------------
" Emmet - HTML/CSS snippets
" -----------------------------------------------------------------------------
let g:user_emmet_mode = 'a'                       " Enable in all modes
let g:user_emmet_install_global = 1               " Global installation
let g:user_emmet_install_command = 1              " Install commands
let g:user_emmet_complete_tag = 1                 " Complete tags
let g:user_emmet_settings = {
    \ 'variables': {
        \ 'indent': '    '
    \ }
\ }

" -----------------------------------------------------------------------------
" Vim-Multiple-Cursors - Multiple cursors
" -----------------------------------------------------------------------------
let g:multi_cursor_start_word_key = '<C-n>'       " Start on word
let g:multi_cursor_select_all_word_key = '<A-n>'  " Select all words
let g:multi_cursor_start_key = 'g<C-n>'           " Start from cursor
let g:multi_cursor_next_key = '<C-n>'             " Next occurrence
let g:multi_cursor_prev_key = '<C-p>'             " Previous occurrence
let g:multi_cursor_skip_key = '<C-x>'             " Skip occurrence
let g:multi_cursor_quit_key = '<Esc>'             " Quit mode

" -----------------------------------------------------------------------------
" Vim-Fugitive - Git wrapper
" -----------------------------------------------------------------------------
" No configuration needed, works out of the box
" Usage: :Gstatus, :Gdiff, :Gcommit, :Glog, :Gblame

" -----------------------------------------------------------------------------
" Vim-Autoformat - Code formatting
" -----------------------------------------------------------------------------
let g:formatprg_clang_format = 'clang-format'
let g:autoformat_on_save = 0                      " Don't auto format on save

" -----------------------------------------------------------------------------
" Dart - Dart language support
" -----------------------------------------------------------------------------
let g:dart_format_on_save = 1                     " Format on save
let g:dart_complete_unknown = 1                   " Complete unknown
