set nocompatible

filetype off
if has('vim_starting')
    set laststatus=2
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    set runtimepath+=~/.vim/bundle/powerline/powerline/bindings/vim
endif
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'Lokaltog/powerline'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'spolu/dwm.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'amiorin/vim-fenced-code-blocks'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'ervandew/supertab'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'dhruvasagar/vim-table-mode'
" Snipmate
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'

NeoBundleCheck

filetype plugin indent on
syntax on
set encoding=utf-8 fileencoding=utf-8
scriptencoding utf-8

set backspace=2
set background=dark
let base16colorspace=256
set cursorline
if filereadable(expand('~/.vim/bundle/base16-vim/colors/base16-default.vim'))
    colorscheme base16-default
endif

let mapleader=","
set listchars=tab:▸\ ,trail:•
nmap <leader>l :set list!<CR>
set list
set number
set ts=2 sts=2 sw=2 expandtab
set linespace=2

nmap <leader>; :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeMinimalUI = 1

if has("gui_running")
    set guioptions-=T " no toolbar set guioptions-=m " no menus
    set guioptions-=r " no scrollbar on the right
    set guioptions-=R " no scrollbar on the right
    set guioptions-=l " no scrollbar on the left
    set guioptions-=b " no scrollbar on the bottom
    set guioptions=aiA
    set mouse=v
    set guifont=Inconsolata\ for\ Powerline:h15
endif

let g:dwm_map_keys = 1

" EasyMotion
let g:EasyMotion_leader_key = '<Leader><Leader>'

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
