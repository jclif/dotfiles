" AutoPair
let g:AutoPairsFlyMode = 1

" Gist
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 2
let g:gist_show_privates = 1
let g:gist_post_private = 1

" crtl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'  " search anything (in files, buffers and MRU files at the same time.)
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard | grep -Ev node_modules']
let g:ctrlp_custom_ignore = { 'dir': 'build$\|node_modules$' }
let g:ctrlp_match_window_bottom = 0 " show the match window at the top of the screen
let g:ctrlp_max_height = 10 " maxiumum height of match window
let g:ctrlp_switch_buffer = 'et' " jump to a file if it's open already
let g:ctrlp_use_caching = 1 " enable caching
let g:ctrlp_clear_cache_on_exit = 0 " speed up by not removing clearing cache everytime
let g:ctrlp_show_hidden = 0 " don't show me dotfiles
let g:ctrlp_mruf_max = 250 " number of recently opened files
" map ; :CtrlPBuffer<CR>
" map <Leader>p :CtrlP <cr>

" Double rainbow - What does it mean!?
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:syntastic_enable_signs = 1
let g:syntastic_auto_jump = 0
let g:syntastic_puppet_lint_disable = 0
let g:syntastic_javascript_checkers = ['eslint']

" Airline configs
"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" NerdTree
" Open Nerdtree by default, except when vim is opened by git commit
:autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | endif
map <leader>d :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_console_startup = 0
let g:NERDTreeWinSize = 60
let NERDTreeShowHidden=1
" Refresh the nerdtree window ever so often
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif

" Tmux/vim clipboard fix
set clipboard=unnamed

" Vim-Markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" Vim Easy Align
vmap <Leader>e <Plug>(EasyAlign)

" Ignore in buffer explorer
let g:netrw_liststyle= 1 " Tree-mode
let g:netrw_list_hide= '.*\.swp$,.*/$'

" Ag
nnoremap <leader>a :Ag<Space>
if executable('ag')
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
endif
" set grepprg=ag\ --nogroup\ --nocolor\ --column

" DevIcons
"get rid of [  ] around icons in NerdTree
syntax enable
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif

" Bookmark
nmap <Leader>mm <Plug>BookmarkToggle
nmap <Leader>mi <Plug>BookmarkAnnotate
nmap <Leader>ma <Plug>BookmarkShowAll
nmap <Leader>mn <Plug>BookmarkNext
nmap <Leader>mp <Plug>BookmarkPrev
nmap <Leader>cc <Plug>BookmarkClear
nmap <Leader>mx <Plug>BookmarkClearAll
nmap <Leader>mkk <Plug>BookmarkMoveUp
nmap <Leader>jj <Plug>BookmarkMoveDown
nmap <Leader>mg <Plug>BookmarkMoveToLine

" WhichKey
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500
