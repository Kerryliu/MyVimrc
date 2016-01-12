set t_Co=256
set guifont=sourceCodePro\ SemiBold\ 10
" set guifont=Hack\ 11
colorscheme molokai

"Vundle
filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-latex/vim-latex'
Plugin 'jiangmiao/auto-pairs'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()
filetype plugin indent on

"Save vim stuff in user directory because dropbox is a pain.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.
"Latex
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'

syntax on
set number
set nowrap
set autochdir
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cursorline
set autoindent
set showmatch
set incsearch
set hlsearch
set foldmethod=indent
set foldnestmax=10
set foldlevelstart=10
set clipboard=unnamedplus

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
"nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>

"Mips asm
au FileType asm set syntax=mips

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

