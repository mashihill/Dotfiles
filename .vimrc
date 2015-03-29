scriptencoding utf-8
set encoding=utf-8

" --- Vundle ---
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
"Plugin 'Yggdroot/indentLine' 
Plugin 'Valloric/YouCompleteMe'
"Plugin 'klen/python-mode'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" --- Vundle end ---

" Ugly ... TODO
"set list listchars=tab:›-,trail:-,precedes:<,extends:>,eol:¬

" UtilSnip
" Trigger configuration. 
" Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:ycm_use_ultisnips_completer = 1

" Solving problem for YCM + ultisnip + supertab
let g:ycm_key_list_select_completion = ["<c-tab>", "<Down>"]
let g:ycm_key_list_previous_completion = ["<c-s-tab>", "<Up>"]
let g:SuperTabDefaultCompletionType = "<C-Tab>"


" indent-guide setting
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 15
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
let g:indent_guides_space_guides = 1
let g:indent_guides_guide_size = 1

syntax on
set smartcase
set ruler
set backspace=2
set cc=+1
"set relativenumber

" specify python path to YCM
let g:ycm_path_to_python_interpreter = '/usr/local/bin/python2'


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

set background=dark
colorscheme wombat256mod
set t_Co=256 

set wildmenu
set wildmode=longest:full

set number
set mouse=a
set ignorecase

"set autoindent
"filetype indent on

" use 4 spaces for tabs
set expandtab
set tabstop=4 
set softtabstop=4 
set shiftwidth=4

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

