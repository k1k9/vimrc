" Basic config
set nocompatible
filetype off
syntax on
filetype plugin indent on
set modelines=0
set number
set ruler
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Autoclosing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Color scheme
set t_Co=256
set cursorline
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

" PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'
Plugin 'itchyny/lightline.vim'
call vundle#end()            " required
filetype plugin indent on    " required


" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nmap <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" LightLine
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode
