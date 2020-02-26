" Based on the following configs:
"
" * https://github.com/mhinz/vim-galore/blob/master/static/minimal-vimrc.vim

set encoding =utf-8
filetype plugin indent on
syntax on

set autoindent
set expandtab
set softtabstop =2
set shiftwidth =2
set shiftround

set backspace =indent,eol,start
set laststatus =2

set showmode
set showcmd

set incsearch
set hlsearch

set number
set relativenumber
set numberwidth =2

let mapleader = " "
let maplocaleader = ","

" Uncomment later
" set lazyredraw

call plug#begin('~/.local/share/nvim/plugs')
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'arcticicestudio/nord-vim'
Plug 'liuchengxu/vim-which-key'
Plug 'ycm-core/YouCompleteMe'
Plug 'ledger/vim-ledger'
call plug#end()

" Nord colocscheme config
let g:airline_powerline_fonts =1
colorscheme nord

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree configuration
nnoremap <Leader>ft :NERDTree<CR>

" Which Key configuration
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
set timeoutlen=500

" Personal configuration
iabbrev @@ rvkolesnev@gmail.com
iabbrev @@v roman.kolesnev@vineti.com

nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" Test zone
vnoremap <Leader>" <esc>`<i"<esc>`><right>a"<esc>v


