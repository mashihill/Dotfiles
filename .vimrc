" --- Vundle ---
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" --- Vundle end ---


" Swap :,; in normal mode
no ; :
no : ;

no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" Quick save
no <BS><BS> :w<CR>
" Clean highlight 
nnoremap <C-L> :nohl<CR><C-L>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

syntax on
filetype plugin indent on

set t_Co=256
colorscheme wombat256mod

set wildmenu
set wildmode=longest:full

set number
set mouse=a
set ignorecase

set autoindent
filetype indent on

"setting tab as 4 chars instead of default 8
set expandtab
set shiftwidth=4
set tabstop=4
set sts=4

"uncomment to let *.c, *.cpp to have smaller tabs
"autocmd Filetype c,cpp setlocal ts=3 sts=3 sw=3

"let makefile to use real TAB to indent
autocmd FileType make setlocal noexpandtab

""autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd BufNewFile,BufRead  *.ino,*.pde  setlocal ft=arduino
autocmd FileType html,htmldjango setlocal ts=2 sts=2 sw=2 omnifunc=htmlcomplete#CompleteTags
autocmd Filetype php setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype css setlocal ts=4 sts=4 sw=4

nnoremap <F4> ;call g:Jsbeautify()<CR>  

set gfn=Courier\ New:h18
"set guifont=Inconsolata\ 12"
set history=50

nmap <c-n> ;NERDTreeToggle<cr>
let g:NERDTreeWinSize=32
let NERDTreeDirArrows=1
let NERDTreeMouseMode=1
let NERDTreeChDirMode=2
let NERDTreeMinimalUI=1

nmap <tab> ;TagbarToggle<cr>
let g:tagbar_width=32
let g:tagbar_autofocus=1
let g:tagbar_compact=1
let g:tagbar_sort=0

"for html indent setup"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"powerline setting
set laststatus=2
"let g:Powerline_symbols=  'unicode'
let g:Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'compatible'
"set guifont=Inconsolata-dz\ for\ Powerline\ Medium

map <c-s> ;syntax sync fromstart<cr>

set directory=/tmp

let NERDTreeIgnore=['\.pyc$']
let g:NERDTreeWinSize=16
let g:tagbar_width=20

