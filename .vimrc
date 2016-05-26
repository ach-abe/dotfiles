set nocompatible
filetype off

set rtp+=~/vimfiles/bundle/vundle.vim

call vundle#begin()
Plugin 'scwood/vim-hybrid'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'wellsjo/wellsokai.vim'
Plugin 'tomasr/molokai'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'pangloss/vim-javascript'
Plugin 'valloric/YouCompleteMe'
Plugin 'nanotech/jellybeans.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-scripts/buftabs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'scrooloose/syntastic'
Plugin 'wkentaro/conque.vim'
Plugin 'majutsushi/tagbar'
call vundle#end()

" General
filetype plugin indent on

set t_Co=256
syntax on

set tabstop=4
set hlsearch
set incsearch
set ignorecase
set relativenumber
set number
set laststatus=2
"set colorcolumn=100
set hidden
set ruler
set showtabline=0
set encoding=utf-8
set guifont=Sauce_Code_Powerline:h8:cANSI:qDRAFT
set ssop-=options
set ssop-=folds

" Airline
let g:airline_powerline_fonts = 1
let g:ctrlp_show_hidden = 1
let g:Powerline_symbols='unicode'
let g:airline_extensions = ['branch', 'tabline']

set backspace=indent,eol,start

" Mappings
set langmenu=en_US
let $LANG = 'en_US'
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap <ESC> :noh<CR><ESC>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-j> :TagbarToggle<CR>
map <c-f> :call JsBeautify()<cr>

set scrolloff=10

syntax on 
set background=dark
colorscheme base16-mocha

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

set encoding=utf-8   
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
au GUIEnter * simalt ~x

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
