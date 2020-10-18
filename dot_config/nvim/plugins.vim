call plug#begin('~/.vim/plugged')

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" System
Plug 'Lokaltog/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'kien/rainbow_parentheses.vim'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'mattn/gist-vim'
Plug 'mhinz/vim-signify'
Plug 'vim-syntastic/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/Align'
" Plug 'dense-analysis/ale'
Plug 'liuchengxu/vim-which-key'

Plug 'neoclide/coc.nvim', {'branch': 'release'} |
  \ Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'} |
  \ Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'} |
  \ Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'} |
  \ Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'} |
  \ Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'} |
  \ Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'} |

Plug 'preservim/nerdtree' |
  \ Plug 'jistr/vim-nerdtree-tabs' |
  \ Plug 'Xuyuanp/nerdtree-git-plugin' |
  \ Plug 'ryanoasis/vim-devicons'

" Search
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'

" Find and replace
Plug 'brooth/far.vim'

" Syntax
Plug 'elixir-lang/vim-elixir'
Plug 'groenewege/vim-less'
Plug 'isRuslan/vim-es6'
Plug 'leshill/vim-json'
Plug 'othree/html5.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'tomlion/vim-solidity'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'

" Go
Plug 'fatih/vim-go'

" HTML/CSS
Plug 'mattn/emmet-vim'

" Terraform
Plug 'hashivim/vim-terraform'

" Fun, but not useful
Plug 'bling/vim-airline'
Plug 'mgutz/vim-colors'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'

call plug#end()
