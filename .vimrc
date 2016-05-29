"Vundle
filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-latex/vim-latex'
Plugin 'jiangmiao/auto-pairs'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'pangloss/vim-javascript'
Plugin 'Shougo/neocomplete.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'digitaltoad/vim-pug'
call vundle#end()
filetype plugin indent on
set t_Co=256
set guifont=sourceCodePro\ SemiBold\ 11
colorscheme molokai
syntax on
set number
set nowrap
set autochdir
set tabstop=2
set shiftwidth=2
set cursorline
set autoindent
set showmatch
set incsearch
set hlsearch
set foldmethod=indent
set foldnestmax=10
set foldlevelstart=10
set clipboard=unnamedplus
set shortmess+=I
set relativenumber

"hide menu bar stuffs
function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <F10> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i

"Latex
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1

" NeoComplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" tab navigation like firefox
"nnoremap <C-S-tab> :tabprevious<CR>
"nnoremap <C-tab>   :tabnext<CR>
"nnoremap <C-t>     :tabnew<CR>
"inoremap <C-S-tab> <Esc>:tabprevious<CR>i
"inoremap <C-tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>

"Save vim stuff in user directory because dropbox is a pain.
set dir=~/.vimswap//,/var/tmp//,/tmp//,.

" - Stop the bell ringing all the time when you do something dumb
" - or unnecessary.
set visualbell t_vb=
au GuiEnter * set visualbell t_vb=
