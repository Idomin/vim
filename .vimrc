set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set relativenumber
"colorscheme onedark
set tabstop=4
set showbreak=...
"let delimitMate_expand_cr = 1
"set foldmethod=syntax
set foldlevel=20


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


inoremap {<CR> {<CR>}<Esc>ko<C-Tab>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'bling/vim-airline'
Plugin 'jimenezrick/vimerl'
Plugin 'honza/vim-snippets'


call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>
map <C-m> :lclose<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_erlang_checkers=['syntaxerl']
let g:syntastic_javascript_checkers = ['jshint']

let g:airline#extensions#tabline#enabled = 1
let g:neocomplete#enable_at_startup = 1


