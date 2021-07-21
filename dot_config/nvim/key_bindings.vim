" Change leader
let mapleader = " "

" STOP USING ESC
:inoremap jk <esc>

" Quiting is hard
nnoremap <Leader>q :q<CR>
nnoremap <Leader>qa :qa<CR>

" Fast saving
nmap <leader>w :w!<cr>

" Hard and fast
nnoremap <Leader>wq :wq<CR>

" FZF
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>p :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <silent> <Leader>g :Commits<CR>
nnoremap <silent> <Leader>gs :GFiles?<CR>
nnoremap <silent> <Leader>H :Helptags<CR>
nnoremap <silent> <Leader>hh :History<CR>
nnoremap <silent> <Leader>h: :History:<CR>
nnoremap <silent> <Leader>h/ :History/<CR>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" yank to system clipboard
map <leader>y "*y

" Stop using arrow keys to navigate!
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Ctrl b is tmux key, remap it

" Easier Page up/down TODO

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Get rid of search highlighting with ,/
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Fix those pesky situations where you edit & need sudo to save
cmap w!! w !sudo tee % >/dev/null

" Toggle paste
" For some reason pastetoggle doesn't redraw the screen (thus the status bar
" doesn't change) while :set paste! does, so I use that instead.
" set pastetoggle=<F6>
nnoremap <F6> :set paste!<cr>"

" Vertical Split
:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-l> :wincmd l<CR>
set splitbelow
set splitright

" Make me a new line
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

nmap [<Space> O<Esc>j

" Format current JSON file/buffer
nnoremap <leader>jq :%!jq .
